# Exercise infrastructure and AI content — discussion

Status: brainstorming. User requested UI validation and app/exercise foundations before gameplay. Unity 6.6 is selected; UI architecture, exercise schema, storage, and model integration are not approved.

## Work sequence

```mermaid
flowchart LR
    A[Validate UI quality and AI authoring] --> B[Agree reusable app components]
    B --> C[Define exercise contracts and content format]
    C --> D[Build a small reviewed exercise pack]
    D --> E[Validate foundation before expansion]
```

This separates UI feasibility, app foundation, content authoring, and optional model integration into bounded decisions. Gameplay remains in the vision notebook.

## Candidate exercise contract

An exercise type defines presentation needs, response format, evaluation rules, and feedback behavior. Question content supplies a particular prompt, options, accepted responses, explanation, and media. These should not require a new Unity screen for every question.

Candidate shared content fields: stable ID, schema/content version, grade, learning objective, difficulty, exercise type, instructions, prompt, local media references, accepted answers, explanation, provenance, and review status. Exact fields and storage format need design approval.

Initial type candidates: single choice, picture-word matching, word/syllable assembly, gap-fill, and sentence ordering. Select a small representative subset for the first foundation rather than implementing every type at once. Define multiple valid answers and Unicode/diacritic handling explicitly; spelling evaluation and meaning evaluation may need different rules.

Suggested boundaries: content repository, exercise-type definitions, answer evaluators, reusable UI views, session/progress storage, and authoring validation. Keep these independent of future combat outcomes and of a specific language model.

## Three AI approaches

| Approach | How content reaches child | Benefit | Cost or limitation |
|---|---|---|---|
| Development-time authoring — recommended first | AI drafts structured questions; validation and human educational review precede packaging into offline app | Predictable offline behavior; no runtime model or GPU requirement | Requires content review and pack updates |
| Reviewed templates and local variation | App selects reviewed items or fills constrained reviewed templates | Offline variation without inference | Diversity limited by template and answer rules; generated combinations still need validation |
| Optional in-app local model — future investigation | Bundled model proposes questions during use, through constrained exercise contracts | Potentially more variation and personalization | CPU latency, memory, distribution size, language quality, and answer validity need evaluation |

AI authoring during development may use external services if later authorized; child-facing first release remains fully offline. Runtime cloud generation conflicts with that confirmed requirement. An optional local model cannot become necessary for core exercises on ordinary integrated-graphics laptops.

## Proposed authoring pipeline

```mermaid
flowchart LR
    A[Reviewed objectives and source material] --> B[AI or human question draft]
    B --> C[Schema and consistency checks]
    C --> D[Educational review]
    D --> E[Versioned local content pack]
    E --> F[Exercise view and evaluator]
    F --> G[Local learning progress]
```

Checks should reject missing assets, unsupported exercise types, duplicate IDs, invalid response structures, and contradictions between options and accepted answers. Educational review still needs to verify Vietnamese usage, ambiguity, grade suitability, and explanation quality. A model checking its own answer is not sufficient independent validation.

If local inference is evaluated later, keep proposed items separate from reviewed content, validate them before presentation, and fall back to approved packaged exercises when inference fails. The exact generation acceptance policy is a separate design decision.

## Open question

Should the first foundation use AI-assisted authoring with reviewed bundled questions, leaving in-app local generation as a later experiment? Or is in-app generation required in the first release?

## Related records

- [UI evaluation direction](2026-10-22-unity-ui-direction.md)
- [Product vision](2026-10-22-vietnamese-app-vision.md)
- [Gameplay ideas for later](2026-10-22-learning-game-ideas.md)
