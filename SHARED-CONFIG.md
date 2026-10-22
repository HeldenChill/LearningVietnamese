# Shared AI configuration

Source: `G:\Unity\claude-unity-shared`.

This project imports every active `universal` manifest entry and the base Claude settings. Source files are preserved verbatim. Unity-specific templated playbooks, architecture examples, retired files, and package-generated guidance are excluded. No Unity version, assembly names, or service locator values have been invented.

Preview and apply from this project:

```powershell
./tools/pull-shared-config.ps1 -WhatIf
./tools/pull-shared-config.ps1
node .claude/tools/ai-audit/check-ai-index.js --project .
./tools/pull-shared-config.ps1 -WhatIf
```

The filtered pull preserves other local files. It refreshes shared-owned copies, base settings, and root rule registries. Review previews before applying updates. It does not perform retirement, package discovery, commits, or pushes. Use this entry point rather than the source Unity sync script while the app stack remains undecided.

The imported shared-sync memory describes the full upstream Unity workflow; this document describes this project's filtered workflow. Claude hooks run in Claude; Codex reads AGENTS.md and runs relevant checks explicitly. The memory hook stays silent until a project memory index exists.
