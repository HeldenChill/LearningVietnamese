---
description: Read the project memory hub and search its canonical index before project discovery; keep confirmed decisions distinct from proposals and deferred topics
---
# Project memory workflow

Start with `.cursor/memory/mem-project-master-context.md`. Search `.cursor/memory/mem-arch-assemblies-canonical.md` for relevant records, then read the linked memory or design note. Verify source when exact API/version facts or edits depend on it.

Keep project memories in `.cursor/memory/`, registered once in the canonical index's LOCAL-MEMORY-INDEX boundaries. Use `.cursor/playbooks/` for reusable project experience and its README as the playbook directory. Design notes remain in `.cursor/plans/design/`.

Record confirmed decisions, proposals, and deliberately deferred topics separately. Latest explicit user scope corrections take precedence over earlier proposals. Update root adapters when onboarding facts become stale. Preserve imported Universal sources; write project-specific knowledge locally.

After memory or link changes, run `node .claude/tools/ai-audit/check-ai-index.js --project .` and verify links in newly edited documents.
