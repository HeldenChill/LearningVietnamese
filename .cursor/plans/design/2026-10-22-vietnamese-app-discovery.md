# Vietnamese learning app discovery

Status: discovery in progress. User selected Grades 1-2 reading and spelling as first-release direction; detailed product design and technology stack remain unapproved.

## Confirmed purpose

- Help children in Grades 1-5 learn Vietnamese.
- Learners are native Vietnamese-speaking children studying Tiếng Việt at school (confirmed by user).
- Windows is the first target.
- User selected Unity 6.6 as product direction; exact editor patch and UI architecture remain unselected. See [Unity UI options and PetVsMonster evidence](2026-10-22-unity-ui-direction.md).
- Fully offline first release, including installation and first launch: bundled dependencies, content and audio, local progress, no required account or online services.
- Core learning supports ordinary Windows laptops without dedicated GPU or CUDA. CPU and integrated graphics are the baseline; AI remains optional.
- Preserve the option of Android and iOS versions later.
- First release focuses on a Grades 1-2 reading and spelling companion. Other functions belong in the longer-term vision.
- Inspect and potentially reuse research from `G:\Projects\AIModel\Translate`.
- Prepare Taste Skill and awesome-design-md as UI references.

## Brainstorming tasks

- [x] Explore project context and existing speech research. This workspace has AI configuration but no app implementation or Git history.
- [ ] Offer visual companion when a concrete visual choice arises; skip if unnecessary.
- [ ] Clarify purpose, constraints, and success criteria one question at a time.
- [ ] Compare two or three implementation approaches after requirements become clear.
- [ ] Present design sections and obtain approval.
- [ ] Write approved design in this directory; commit only when a Git repository exists.
- [ ] Review spec for placeholders, contradictions, scope, and ambiguity.
- [ ] Obtain user review of written spec.
- [ ] Use writing-plans to prepare implementation plan.

## Existing research evidence

Read-only inspection on 2026-10-22; models were not executed or evaluated.

- `Translate/stt.py`: faster-whisper `large-v3-turbo`, CUDA with float16, optional Vietnamese language selection, VAD and silence filtering. Current implementation requires CUDA; no CPU fallback is implemented there.
- `Translate/tts.py`: Piper Vietnamese voice `vi_VN-vais1000-medium.onnx`, CPU synthesis, Windows playback through `winsound`, shared output WAV path.
- `Translate/tip.py`: Windows hotkeys and Tkinter prototype, microphone capture at 16 kHz, background worker threads.
- `Translate/translate.py`: English-to-Vietnamese translation experiment.

Transcription is not established pronunciation assessment. Recognition quality for children's voices, Vietnamese tones, regional accents, hardware requirements, and model distribution rights still need evaluation before integration decisions. No research source, model, environment, or audio file has been copied into this project.

## Market research

See [market and exercise research](2026-10-22-vietnamese-learning-market-research.md).

User selected Grades 1-2 reading and spelling after market research. See [product vision and phased functions](2026-10-22-vietnamese-app-vision.md).

User confirmed fully offline first and support for ordinary Windows laptops without a dedicated GPU. Parent involvement remains undecided.

Gameplay discussion is parked in the [learning game ideas notebook](2026-10-22-learning-game-ideas.md). It contains selected mechanic preferences but no approved implementation design.

## Current work priority — clarified by user

1. Validate beautiful, responsive Unity 6.6 app UI that AI/code can create and edit effectively.
2. Design and build the initial app infrastructure with reusable basic components and exercises, after design approval.
3. Define exercise types, question structure, answer evaluation, and content storage.
4. Decide how AI assists question/database authoring, and whether an optional local model may eventually generate suitable exercises inside the app.

Core gameplay and roguelite implementation are later work. See [content and AI pipeline discussion](2026-10-22-exercises-and-ai-content.md).
