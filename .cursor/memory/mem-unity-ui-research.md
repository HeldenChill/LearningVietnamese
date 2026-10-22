# Unity UI research — source evidence and decision boundaries

Updated: 2026-10-22. User selected Unity 6.6; exact patch unpinned.

## PetVsMonster reference

User authorized read-only inspection of `G:\Unity\Project\PetVsMonster` as a real game example. Root instructions and UI memory were consulted. No writes, editor operations, builds or runtime tests occurred.

Verified source facts:

- `ProjectSettings/ProjectVersion.txt`: 2022.3.62f2.
- `Packages/manifest.json`: uGUI 1.0.0, TextMeshPro 3.0.7, Addressables 1.22.3 and `com.hung.ui` release-2026.10.07.1 among dependencies. These are reference versions, not adoption recommendations.
- `_UI/UIManager.cs`: `Hung.UI.UIManager` adapter, Setup/Open lifecycle and Addressables acquisition.
- Resolved package UIManager: canvas registry, back stack, Resources/Addressables providers and CanvasScaler references.
- `_UI/Scripts/BaseUICanvas.cs`: home tabs, button state and transition logic.
- `_UI/Scripts/GameplayTopPanel.cs`: persistent run HUD, TMP labels and DOTween effects.
- `_Gameplay/_SkillSelection/UI/UISkillCard.cs` and corresponding prefab: serialized images/text/buttons and animated reveals.
- No UXML/USS found under `Assets/_Game` in scoped search; no global absence claim.
- `.cursor/memory/mem-figma-to-unity-ui-playbook.md`: measured layout, sliced sprites, reusable prefab pieces, screenshot comparison, serialized binding and prefab save pitfalls. Historical experience, not newly reproduced findings.

## Candidate approaches

1. UI Toolkit-first for app screens and simple overlays; add uGUI only for demonstrated animation/game needs. Current recommendation to evaluate.
2. uGUI throughout: closest to existing project/package experience; responsive layout and consistent styling require shared component discipline.
3. Native/web shell hosting Unity: app ecosystem benefits with added runtime lifecycle, packaging, data/input bridging and platform maintenance. Not selected.

UI Toolkit provides UXML, USS, C#, and flexible layout; it does not run React/Tailwind unchanged. Text source makes AI editing easier to inspect, not automatically correct or attractive. Evaluate rendered output and interactions on the exact selected version.

Official sources consulted:

- [Unity 6.6 UI system comparison](https://docs.unity.com/en-us/engine/6000.6/manual/uitoolkits/ui-system-compare)
- [Versioned 6.3 comparison also consulted](https://docs.unity3d.com/6000.3/Documentation/Manual/UI-system-compare.html)
- [Layout documentation consulted](https://docs.unity.com/en-us/engine/6000.3/manual/uitoolkits/uielements/uie-uss/properties/uie-layout-engine)
- [USS documentation](https://docs.unity3d.com/6000.3/Documentation/Manual/UIE-USS.html)
- [Unity as a Library limitations](https://docs.unity3d.com/6000.3/Documentation/Manual/UnityasaLibrary.html)

Do not transfer 2022.3 compatibility or every 6.3 feature claim into 6.6 without checking exact editor/package versions. No editor is selected or installed by these notes.

## Current validation scope

Only app screens and basic exercise components: library, question presentation, answer choices, feedback, audio controls and scrolling. Combat overlay was explicitly removed from immediate scope by user. Check AI revision effort, shared styles, data-driven repeatable controls, long Vietnamese text, diacritics, resize behavior, focus/navigation, IME where used, and offline assets. Future touch/keyboard/safe-area behavior needs its own device checks. Native appearance and full native platform behavior are different requirements.
