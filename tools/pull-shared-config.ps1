[CmdletBinding()]
param(
  [string]$SharedRepo = 'G:\Unity\claude-unity-shared',
  [switch]$WhatIf
)
$ErrorActionPreference = 'Stop'
$projectRoot = Split-Path $PSScriptRoot -Parent
$manifest = Get-Content -Raw -Encoding UTF8 -LiteralPath (Join-Path $SharedRepo 'manifest.json') | ConvertFrom-Json
$changed = 0
$encoding = New-Object System.Text.UTF8Encoding($false)
$entries = @($manifest.files | Where-Object { $_.bucket -eq 'universal' })
$copies = @($entries | ForEach-Object {
  $entry = $_
  foreach ($dest in $entry.dest) { [pscustomobject]@{ Src = $entry.src; Dest = $dest } }
})
$copies += [pscustomobject]@{ Src = 'files/claude/settings.json'; Dest = '.claude/settings.json' }
foreach ($copy in $copies) {
  $source = Join-Path $SharedRepo $copy.Src
  $target = Join-Path $projectRoot $copy.Dest
  $text = [IO.File]::ReadAllText($source)
  if ((Test-Path -LiteralPath $target) -and (([IO.File]::ReadAllText($target) -replace "`r`n", "`n") -ceq ($text -replace "`r`n", "`n"))) { continue }
  $changed++
  Write-Output "$(if ($WhatIf) { 'WOULD COPY' } else { 'COPY' }) $($copy.Dest)"
  if (-not $WhatIf) {
    [IO.Directory]::CreateDirectory((Split-Path $target -Parent)) | Out-Null
    [IO.File]::WriteAllText($target, $text, $encoding)
  }
}
# Reuse the source registry renderer without invoking Unity package discovery or retirement.
$registryCode = @'
const fs = require('fs');
const path = require('path');
const [shared, project, preview] = process.argv.slice(1);
const { renderRegistry, spliceGenerated } = require(path.join(shared, 'tools/sync/registry.js'));
const manifest = JSON.parse(fs.readFileSync(path.join(shared, 'manifest.json'), 'utf8'));
const destinations = new Set(manifest.files.filter(f => f.bucket === 'universal').flatMap(f => f.dest));
const block = renderRegistry(project, destinations);
for (const file of ['AGENTS.md', 'CLAUDE.md']) {
  const target = path.join(project, file);
  const old = fs.readFileSync(target, 'utf8');
  const next = spliceGenerated(old, block);
  if (next === null) throw new Error(`Missing registry boundaries in ${file}`);
  if (next !== old) {
    console.log(`${preview === 'True' ? 'WOULD UPDATE' : 'UPDATE'} ${file}`);
    if (preview !== 'True') fs.writeFileSync(target, next);
  }
}
'@
& node -e $registryCode $SharedRepo $projectRoot ([string][bool]$WhatIf)
if ($LASTEXITCODE -ne 0) { throw 'Rule registry generation failed.' }
Write-Output "Shared file changes: $changed"
