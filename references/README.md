# UI resources

Requested sources reviewed on 2026-10-22:

- Taste Skill website: https://www.tasteskill.dev/
- Authoritative repository: https://github.com/Leonxlnx/taste-skill
- Design reference collection: https://github.com/voltagent/awesome-design-md

## Download status

Both repositories were inspected through web browsing. Both local shallow-clone attempts failed because the shell network proxy at `127.0.0.1:9` was unreachable. Neither repository is downloaded or installed. No upstream commit has been pinned.

Retry from the project root when Git network access is available:

```powershell
git clone --depth 1 https://github.com/Leonxlnx/taste-skill.git references/taste-skill
git clone --depth 1 https://github.com/voltagent/awesome-design-md.git references/awesome-design-md
```

After downloading, inspect each repository's current README, license, and skill instructions before activation. Record commit IDs. Keep upstream references distinct from the app's approved design. No project-wide or global skill installation has been performed.

## Intended use

Taste Skill supplies UI design guidance. awesome-design-md supplies brand design analyses for comparison. Neither selects this app's stack or visual identity. Adapt useful patterns to children's reading ability, Vietnamese diacritic rendering, keyboard and touch input, clear audio controls, and accessible feedback after product requirements are approved.

The website and GitHub README currently describe different Taste Skill inventories. Use downloaded, pinned repository contents as the authoritative basis for installation rather than assuming the website's older skill list is current.
