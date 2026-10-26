# [Project name] design reference

Adapt this starter to the project before using it. Replace bracketed fields with real references and decisions; omit sections that do not apply. This is a plain Markdown guide, not a validated Google DESIGN.md specification.

## Product and visual intent

- Audience: [who uses this and what they already understand].
- Primary task: [what someone should accomplish on this screen].
- Character: [a concrete visual reference and why it fits the product].

Start with a focused interface: the current task, its result, and the next useful action should be easy to find. Choose the visual identity from the product and audience. Keep decoration subordinate to the content.

## Sources of truth

| Concern | Maintained reference |
| --- | --- |
| Colors, typography, spacing, radii, and themes | [existing token or theme file] |
| Buttons, inputs, menus, dialogs, and notices | [existing shared components] |
| Layout and navigation | [representative screen or layout component] |
| Approved visual direction | [screenshot, design file, or URL] |

Use these sources before introducing a new value or pattern. Record missing decisions here only until a maintained implementation exists, then link to it. Resolve conflicts with approved design decisions before changing the UI.

## Layout and hierarchy

- Give each screen a clear purpose and a primary action. Group related controls and keep secondary actions quieter.
- Use typography, spacing, and alignment to distinguish headings, content, and supporting details. Use borders and containers where they explain a real grouping.
- Match density to the task. Compact toolbars can serve frequent users; reading content and touch controls need room.
- Keep recurring navigation, content widths, and control geometry consistent across related screens.
- Use realistic content, long names, and populated lists when judging the layout.

## Controls and feedback

- Reuse shared controls and their supported variants. Keep reusable visual changes in the owning component; keep feature-specific treatment near that feature.
- Distinguish hover, keyboard focus, selected, disabled, and pending states. Make icon-only actions understandable with accessible names and appropriate visible help.
- Show actual progress and completion. Explain why an unavailable action is unavailable when that would help the user proceed.
- Make empty states explain how to start. Make errors explain what happened and how to recover; preserve entered work where practical.
- Provide a visible way back, cancel, or undo when the action supports it. Reserve confirmation for consequential actions.

## Words users see

- Use familiar task names, sentence case, and direct verbs. Button labels describe the outcome, such as “Save changes.”
- Keep the same action name through the control, progress message, and confirmation.
- Explain technical details only when they help someone make a decision. Keep implementation notes out of product copy.

## Responsive behavior, accessibility, and motion

- Preserve the main task on narrow screens. Reflow navigation and supporting panels deliberately; keep actions reachable without relying on hover.
- Support keyboard navigation, visible focus, readable contrast, text zoom, and appropriate touch targets. Use more than color to communicate state.
- Apply supported themes through semantic tokens. Check text, icons, borders, and overlays in each supported theme.
- Use motion to explain a change or respond to an action. Respect reduced-motion preferences and avoid continuous decorative repainting.

## Evidence before delivery

Inspect the changed flow in the available preview or browser. Check a narrow and wide layout, keyboard operation, realistic content, and the relevant pending, empty, error, and success states. Capture before/after images for visual changes and a short recording when motion matters. Report what was inspected and any unavailable checks.

Use a screenshot or interactive preview to help the reviewer assess meaningful design choices, with a brief explanation of how the change helps the user. Keep automated checks focused on behavior; visual evidence complements them.
