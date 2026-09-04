# Personal Codex Workflow

## 1. Start a feature

Use this prompt:

> I want to build **[feature]**. First inspect the project and ask only questions that materially affect the design. For multi-step, risky, decision-heavy, or multi-session work, save a local-only plan to `.codex/plans/`; otherwise present the short approach in chat. Do not edit code yet.

Review the plan. Then say:

> Implement the approved plan. Work task by task, run the listed checks, and stop if an unresolved decision changes the agreed scope.

## 2. Build or improve UI

Use this prompt:

> Build **[screen/component]** using frontend-design. Match the existing design system, make it responsive and accessible, and explain the UX decisions briefly. Run the relevant checks.

For an existing screen:

> Review **[screen/component]** using web-design-guidelines. Prioritize the five highest-impact usability, accessibility, visual-hierarchy, and responsive-design issues. Then implement only the fixes I approve.

## 3. Fix a bug

Use this prompt:

> Debug **[symptom]** using systematic-debugging. Reproduce it, inspect recent changes and relevant data flow, state the root-cause hypothesis with evidence, and do not make a fix until then.

After the diagnosis:

> Implement the smallest root-cause fix. Add a regression test where practical, then run the affected tests and full relevant checks.

## 4. Finish safely

Use this prompt:

> Before calling this complete, use verification-before-completion. Run the precise tests, type-check, lint, and build that prove the acceptance criteria. Report the command output and any remaining gap.

When the work is ready to ship:

> Use finishing-a-development-branch. Verify the full test suite first, then present the available integration options. Do not commit, push, or merge without asking me.

## 5. Write clearly

Use this prompt:

> Rewrite this for **[audience]** using professional-communication. Lead with the decision or request, explain why it matters in plain language, and finish with clear owners and next steps: **[draft]**

## 6. Hand off a long session

Use this prompt near a context checkpoint:

> Keep one outcome in this task. At a long tool-heavy phase boundary, after compaction, or when the context becomes noisy, finish the current atomic step and prepare a local-only handoff under `.codex/handoffs/`.

When it is time to switch:

> Finish and verify the current atomic step. Record the goal, acceptance criteria, settled decisions, Git status, changed files, verification evidence, blockers, and exact next action. Start a fresh task using only that handoff and its local context links. Never copy the conversation or commit/push agent artifacts.

## Daily cadence

1. Choose one outcome, not a vague activity.
2. Plan only multi-step, risky, decision-heavy, or multi-session work; start small tasks directly.
3. Build in short, testable increments.
4. Diagnose evidence-first when something breaks.
5. Verify before saying "done."

## Useful one-line requests

- "Turn this idea into an implementation plan; don’t code yet."
- "Give this UI a design and accessibility critique, then wait for approval."
- "Find the root cause; don’t guess a fix."
- "Verify this is ready to ship with fresh evidence."
- "Write this update for a non-technical stakeholder."
