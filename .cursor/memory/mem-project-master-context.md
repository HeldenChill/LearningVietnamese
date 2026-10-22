# LearningVietnamese — project context

Updated: 2026-10-22. Read this hub first; linked records contain detail.

## Confirmed decisions

- Native Vietnamese-speaking primary pupils studying school Tiếng Việt, not Vietnamese as a foreign language.
- Long-term Grades 1-5; initial learning focus Grades 1-2 reading and spelling.
- Windows first; Android/iOS possible later.
- Fully offline including installation and first launch. Bundle dependencies, fonts, lessons, images and audio; local progress; no required account, activation, downloads or cloud service.
- Ordinary Windows laptops with CPU/integrated graphics. No dedicated GPU or CUDA required for core learning; AI optional.
- Unity 6.6 selected. Exact editor patch and UI stack unselected.
- User wants concise caveman-style conversation, with technical accuracy retained. Code and committed documents use normal prose.

## Current priority and stopping point

User corrected scope: first prove AI/code can create and edit beautiful, responsive, web-quality Unity UI; then establish app infrastructure, reusable basic components and exercises. Define question/exercise types, evaluation and content storage, and investigate AI content authoring. Gameplay is later.

UI Toolkit is a recommendation to evaluate, not approved architecture. A combat overlay was removed from the immediate UI proposal. No prototype, project scaffold, implementation plan, final UI design, curriculum pack, or runtime model integration has been approved or built.

AI-assisted development-time authoring with reviewed bundled questions was recommended. User replied they want to think carefully about the roadmap later. Do not treat this as final approval of the content pipeline or runtime-generation choice. Do not press roadmap questions during memory maintenance.

## Durable records

- [Full session decisions and chronology](mem-session-2026-10-22.md)
- [UI research evidence](mem-unity-ui-research.md)
- [Product vision](../plans/design/2026-10-22-vietnamese-app-vision.md)
- [Gameplay idea notebook](../plans/design/2026-10-22-learning-game-ideas.md)
- [UI evaluation discussion](../plans/design/2026-10-22-unity-ui-direction.md)
- [Exercise and AI-content discussion](../plans/design/2026-10-22-exercises-and-ai-content.md)
- [Market research](../plans/design/2026-10-22-vietnamese-learning-market-research.md)
- [Session lessons playbook](../playbooks/learning-app-discovery-and-ui-validation.md)

## Working state

Workspace was empty at onboarding and was not a Git repository when checked. Recheck before any future commit rather than claiming documents are committed. Shared Universal config was imported through a filtered project script. No source project was modified.

Shared Gemini/Antigravity adapters now exist after an upstream refresh. Their `.agents/skills/` references do not mean those skills have been installed locally; use available session skills and verify paths before invoking them.

UI references were reviewed on the web but failed to clone due to shell proxy `127.0.0.1:9`. Neither Taste Skill nor awesome-design-md is downloaded or installed. See [resource status](../../references/README.md).

Next session: resume the topic the user selects. Keep design approval gates before implementation. Distinguish confirmed decisions, assistant proposals, and deferred questions. No subagents unless explicitly requested. Never include a hash character in Mermaid labels.
