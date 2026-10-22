# Session memory — project discovery, UI, learning and game vision

Date: 2026-10-22. This record consolidates the session; latest explicit user corrections supersede earlier proposals.

## Onboarding and configuration

User requested relevant configuration from `G:\Unity\claude-unity-shared`. Workspace had no app or Git repository. Imported 35 files: active Universal manifest entries plus Claude base settings. Added AGENTS.md, CLAUDE.md, documentation, and `tools/pull-shared-config.ps1`. The script supports preview, copies Universal entries, and renders root registries without Unity package discovery or retirement. Skipped the Unity-specific templated refactor playbook, retired files, package guidance, and architecture examples. Source repo unchanged. Preview after import reported zero changes; index checker reported zero findings.

Do not use the full upstream Unity sync casually: it expects project identity and runs generated package/retirement steps. Imported upstream sync memory describes that full workflow; local SHARED-CONFIG.md describes this project's filtered workflow. No Unity-specific identity, assembly or service values were invented.

During final memory maintenance, the filtered pull also picked up five upstream changes: updated shared-sync memory and new ai-config-adoption playbook, GEMINI.md, and two `.agents/rules/` files. Root rule registries were regenerated; final preview reported zero changes. Upstream adapters mention `.agents/skills/`, but this project has not installed those skill directories; use session-provided skills and do not claim those local paths exist.

## Audience and product constraints

User confirmed native Vietnamese-speaking pupils learning school Tiếng Việt. Initial direction is Grades 1-2 reading/spelling; Grades 3-5 functions belong in longer-term vision. Windows first, future Android/iOS; completely offline from setup; ordinary CPU/integrated-graphics laptops; no dedicated GPU or CUDA dependency. Parent involvement, exact hardware floor, curriculum content, release metrics, and distribution size remain undecided.

## Market research and limitations

Official public sources reviewed: VMonkey, VioEdu, Trạng Nguyên, OLM, Hoc10 and HOCMAI. Patterns include stories/phonics/listening, video then practice, school-topic/week navigation, matching/ordering/gap-fill questions, parent reports, and optional competition/rewards. OLM public preview supplied actual audio, picture, word-matching and comprehension task evidence. Government teaching guidance supports applied reading/writing/speaking/listening; no complete curriculum or amendment audit was performed.

Research was desk research: no paid accounts, child testing, app installation or signed-in UI audit. Marketing learning-effectiveness claims were not validated. VMonkey promotional page prices were recorded as dated observations, not checkout-confirmed prices. Detailed sources and evidence boundaries live in the market research document; refresh time-sensitive findings before decisions that rely on them.

## Translate research project

Read-only inspection of `G:\Projects\AIModel\Translate`:

- `stt.py`: faster-whisper `large-v3-turbo`, CUDA float16, VAD/silence filtering, optional language selection. No implemented CPU fallback in inspected code.
- `tts.py`: Piper CPU Vietnamese synthesis with `vi_VN-vais1000-medium.onnx`, Windows `winsound`, shared output path.
- `tip.py`: Tkinter/Windows hotkeys, threaded microphone/transcription experiment, 16 kHz capture.
- `translate.py`: English-to-Vietnamese translation experiment.

No models executed, child-speech performance measured, files copied, or rights verified. Transcription accuracy is not pronunciation assessment. The CUDA implementation cannot become the CPU-baseline app's required dependency.

## UI reference acquisition

User supplied tasteskill.dev and VoltAgent/awesome-design-md; stray text after first URL was treated as a typo. Website resolves to `Leonxlnx/taste-skill`. Web review succeeded; both local shallow clones failed with unreachable proxy `127.0.0.1:9`. Source website and repository described different skill inventories, so pin actual downloaded repository before activation. Nothing installed globally or locally as a skill. Retry instructions and status are in references/README.md.

## Gameplay ideas and explicit decisions

Ideas remain in the discussion notebook: achievements/badges, trees growing, fishing collections, a story world, ordinary exercises with game rewards, and language as an actual game action. Garden/pond could be persistent rewards, but no theme was selected.

User proposed a roguelike slash endgame mode. Exploratory term used in notes: roguelite, meaning repeatable runs with possible persistent progress; exact genre rules are not final.

Confirmed mechanic preferences:

- Manual attacks and dodges combined with Vietnamese-powered abilities.
- Both safe-room preparation and in-combat language interactions.
- Combat questions use slow motion. User explicitly deferred discussion of protection and timing; do not repeatedly raise it or silently impose invulnerability/full pause.
- All three relationships in vision: normal questions powering abilities; word/phrase completion counters; language construction creating abilities.
- Prioritize normal questions and counters in gameplay exploration. Language-created abilities are creative but complex and explicitly deferred to future gameplay vision.
- Counter example: enemy presents “lá”, player chooses among three words; “chắn” completes “lá chắn” to counter.
- Incorrect answer misses counter; combat continues; explanations after run. Missed counter does not imply instant death.
- Review after both character death and successful completion. Child-friendly presentation is required, but review UX discussion is explicitly deferred. Voluntary-exit behavior remains open.

Content nuance: “lá cây” is meaningful too. Separate validity of expression from contextual usefulness. Do not mark valid alternatives linguistically wrong simply because a different counter was intended. Exact distractors, accepted alternatives, damage, triggers and frequency remain undecided.

## Engine and UI direction

User selected Unity, then Unity 6.6. Raised both AI/code authoring difficulty and responsive/native-feeling UI difficulty. Read-only PetVsMonster inspection informed alternatives; detailed evidence is in mem-unity-ui-research.md.

Assistant initially proposed UI Toolkit for app screens plus uGUI for game UI, later refined to UI Toolkit-first evaluation with uGUI added only where proven useful. Both are recommendations, not approved stack. No native/web shell or embedded browser was selected. App-like polish is a goal; native OS behavior is not guaranteed by engine UI.

## Latest priority correction

User stopped premature gameplay/prototype scope: first validate beautiful UI and AI editing, build app infrastructure/basic components/exercises, decide question types and content database, then consider language models authoring content or generating questions inside the game. Removed combat overlay from immediate evaluation proposal. Unity/game vision does not expand the first foundation's scope.

Discussed three content paths: development-time AI drafts with review and bundled packs; constrained reviewed templates; optional runtime local model. Runtime cloud generation conflicts with fully offline use. Development tools could use online services only within later authorized scope. No final schema, database, model, or content workflow selected. User wants to reconsider roadmap later; current task is memory/playbook consolidation only.

## Artifact map and status

All discovery/vision records live under `.cursor/plans/design/` with date prefix `2026-10-22-`: `vietnamese-app-discovery`, `vietnamese-learning-market-research`, `vietnamese-app-vision`, `learning-game-ideas`, `unity-ui-direction`, and `exercises-and-ai-content`. These are notes and proposed designs, not completed software. No implementation plan or app scaffold exists. Fresh audits validate documentation/index consistency, not runtime behavior or educational quality.
