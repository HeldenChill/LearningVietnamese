# Unity UI direction — brainstorming

Status: user selected Unity 6.6 as the product direction. Exact editor patch and UI architecture remain unselected. No implementation has started.

## Evidence from PetVsMonster

Read-only source inspection on 2026-10-22. No scenes were opened, no runtime behavior tested, and no project files changed.

- `ProjectSettings/ProjectVersion.txt`: Unity 2022.3.62f2.
- `Packages/manifest.json`: uGUI, TextMeshPro, Addressables, and `com.hung.ui`.
- `Assets/_Game/_UI/UIManager.cs`: product adapter over `Hung.UI.UIManager`, screen setup/open behavior and Addressables provider.
- Resolved `com.hung.ui` source: canvas registry, navigation back stack, prefab providers, and canvas scaling references.
- `Assets/_Game/_UI/Scripts/BaseUICanvas.cs`: home navigation with button states and animated transitions.
- `Assets/_Game/_UI/Scripts/GameplayTopPanel.cs`: persistent gameplay status UI, TextMeshPro, and DOTween effects.
- `Assets/_Game/_Gameplay/_SkillSelection/UI/UISkillCard.cs`: serialized images, text, buttons, and animated reveal behavior; corresponding prefab exists.
- No UXML or USS files were found under `Assets/_Game` in this inspection. This does not establish their absence from every package or editor tool.
- Its Figma-to-Unity memory describes reusable components, sliced sprites, measured layout, and render-and-compare verification. This documents workflow experience, not a fresh visual test.

Conclusion: existing navigation and game UI experience are valuable. They do not establish that prefab-heavy authoring is the easiest approach for lesson libraries, exercise layouts, or parent reports.

## Three approaches

| Approach | Fit | Cost or uncertainty |
|---|---|---|
| Unity with UI Toolkit for app screens and uGUI for selected game UI — recommended to investigate | Structured lessons, library, settings and reports benefit from document/style authoring; animated combat UI can use familiar prefab patterns | Two UI systems require explicit input, focus, ordering and shared visual conventions |
| Unity with uGUI throughout | Most direct reuse of PetVsMonster experience and compatible package patterns | Responsive app layouts and consistent styling require disciplined reusable prefabs and design values |
| Native or web shell hosting Unity gameplay | Gives app screens their own UI ecosystem | Runtime lifecycle, offline packaging, input and progress bridges add platform work; embedding is not a free shortcut |

UI Toolkit uses UXML structure, USS styling, C# behavior, and Flexbox-style layout. It is not a browser: React components, Tailwind classes, and ordinary CSS cannot be dropped into it unchanged. [Official layout documentation](https://docs.unity.com/en-us/engine/6000.3/manual/uitoolkits/uielements/uie-uss/properties/uie-layout-engine), [USS documentation](https://docs.unity3d.com/6000.3/Documentation/Manual/UIE-USS.html).

Unity's UI comparison documents styling/layout/data-binding capabilities and the different animation workflows. Check capabilities against the exact selected editor version; PetVsMonster's 2022.3 environment must not be treated as equivalent to Unity 6 documentation. [Unity 6.3 comparison](https://docs.unity3d.com/6000.3/Documentation/Manual/UI-system-compare.html).

Unity as a Library supports native hosting but documents mobile full-screen and lifecycle limitations. An embedded web UI inside Unity would be another distinct approach requiring a suitable browser integration and separate evaluation. [Official hosting limitations](https://docs.unity3d.com/6000.3/Documentation/Manual/UnityasaLibrary.html).

## Proposed evaluation before architecture approval

After design approval, compare one lesson-library screen, one Vietnamese question screen, and a small animated combat overlay. Include resizing, long text and diacritics, keyboard focus, touch-oriented layout, offline assets, and integration with the intended navigation model. Check Vietnamese IME and mobile keyboard behavior where text entry is required. Assess ease of editing as well as runtime behavior.

Start with shared spacing, colors, typography, buttons, cards, and screen templates. Translate useful web design references into the chosen Unity system; do not assume Taste Skill or a DESIGN.md supplies Unity components.

Keep lesson content, answer evaluation, and local progress separate from UI-specific views so gameplay and ordinary practice use consistent learning rules. Do not copy PetVsMonster's complete application or monetization dependencies into this offline project.

## Confirmed concerns and refined recommendation

User confirmed both concerns: AI/code must create and edit UI efficiently, and the result must behave responsively with app-like polish.

Refined recommendation: evaluate UI Toolkit first for app screens and simple screen overlays. Introduce uGUI only where a demonstrated gameplay requirement benefits from it, rather than requiring two UI systems from the start. This refines the earlier hybrid candidate; neither choice is approved architecture yet.

### Authoring proposal

- Keep screen structure in readable UXML, visual rules in USS, and interaction/presentation logic in small C# units.
- Define shared typography, spacing, colors, control states, cards, and navigation templates. Change shared styles rather than repeatedly editing individual screen coordinates.
- Use layout containers and content-driven sizing rather than positioning every label manually.
- Give AI edits a repeatable verification path: load the screen, render at target sizes, inspect screenshots and behavior, and revise. Text-based authoring alone cannot establish visual quality.
- Treat generated code as a first draft. Validate it against actual Unity APIs and the pinned editor version.

### Behavior proposal

Design narrow, medium, and wide arrangements based on content needs, not merely uniform scaling. Validate scroll behavior, text wrapping, focus navigation, control states, window resizing, and Vietnamese diacritics. Where typing is used, explicitly test Vietnamese IME composition and selection behavior. Later mobile work needs separate touch, safe-area, and on-screen keyboard checks.

An attractive app-like interface is a reasonable design target; exact OS-native controls, accessibility behavior, text editing, and platform conventions are not automatically supplied by UI Toolkit. If a required native behavior fails the evaluation, revisit that requirement and architecture explicitly.

### Initial evaluation proposal — superseded

The earlier proposal included a combat overlay. User clarified that game design and gameplay implementation are later work. The current UI evaluation contains only app screens and basic exercise components.

### Current evaluation and foundation direction

First prove that AI/code can efficiently create, edit, and verify attractive Unity 6.6 UI with web-quality visual polish. Then establish the app foundation and reusable components/exercises. Define exercise formats and the content pipeline before scaling question production. No implementation has been approved yet.

Proposed first visual sample: lesson library, one exercise screen, and representative reusable controls. Include Vietnamese text, long titles, diacritics, audio controls, answer choices, feedback states, and scrolling. Judge the rendered result and ease of revising it; do not claim success merely because UXML/USS is editable. Combat overlays, arenas, and gameplay are excluded from this stage.

Acceptance evidence should cover both concerns:

1. Change a shared style and verify all relevant controls update consistently.
2. Add or reorder a lesson using content data without manually rebuilding its layout.
3. Resize between agreed window sizes without clipped text, overlapping controls, or unusable scrolling.
4. Navigate and answer using mouse and keyboard; verify visible focus, predictable navigation, and correct handling of Vietnamese input where applicable.
5. Run using bundled fonts/assets with networking disabled and on the agreed integrated-graphics baseline.

Unity 6.6 is selected. Pin the exact installed editor patch before implementation and verify API/package compatibility against that version. Window sizes, input requirements, and baseline device still need agreement before implementing this slice. PetVsMonster's 2022.3 package versions are reference evidence, not assumed compatible dependencies.
