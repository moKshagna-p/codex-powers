# Personal Codex Workflow

## 1. Implement an outcome

Use this as the default prompt:

> Implement **[outcome]**. Start with **[reference path, example, or URL]**. Success means **[observable acceptance criteria]**. Inspect the existing implementation, resolve routine details, and continue through implementation and relevant verification. Ask only when the answer materially changes scope or correctness; continue independent work while waiting. Plan locally under `.codex/plans/` when the work is multi-step, risky, decision-heavy, or spans sessions. Report changes, verification, and remaining gaps. Follow the existing Git authorization rules.

For a new project or large ambiguous feature, add:

> Use grill-with-docs when durable context helps, otherwise grill-me, to resolve consequential decisions first. Summarize our goal, constraints, non-goals, and success criteria, then continue once those decisions are settled.

When you want discovery only, say so explicitly:

> Inspect **[idea]**, clarify the consequential decisions, and propose an implementation plan. Do not edit code yet.

## 2. Build or improve UI

> Build **[screen/component]** using frontend-design. Match the existing design system, make it responsive and accessible, and explain the UX decisions briefly. Implement and run the relevant checks.

For an existing screen:

> Review **[screen/component]** using web-design-guidelines and fix the highest-impact usability, accessibility, visual-hierarchy, and responsive-design issues within **[scope]**. Verify the result. Ask before changes that materially alter the intended design or behavior.

For a critique only:

> Review **[screen/component]** and prioritize the five highest-impact issues. Do not implement changes yet.

## 3. Fix a bug

> Fix **[symptom]** using systematic-debugging. Reproduce it, inspect recent changes and relevant data flow, and establish the root cause with evidence. Then implement the smallest root-cause fix and add a meaningful regression test where practical. Run the focused affected checks. Broaden the suite only for integration requirements, new changes, failures, or unresolved risk. Continue from diagnosis through verification without waiting for a separate implementation prompt.

## 4. Verify and deliver

Verification is part of implementation. Use this when checking existing work:

> Use verification-before-completion. Run the smallest set of checks that proves the acceptance criteria: meaningful tests for behavior, or parse, diff, link, and configuration checks for docs and config. Report the actual results and any remaining gap. Do not repeat passing checks without a concrete reason.

When you want integration advice:

> Use finishing-a-development-branch to assess readiness and present the relevant integration options. Perform Git delivery actions only when I explicitly request them; do not ask again for actions already authorized.

## 5. Write clearly

> Rewrite this for **[audience]** using professional-communication. Lead with the decision or request, explain why it matters in plain language, and finish with clear owners and next steps: **[draft]**

## 6. Continue a long task

> Keep one outcome in this task. At a long phase boundary or after compaction, finish the current atomic step and update a concise local checkpoint under `.codex/handoffs/` when needed. Record the goal, acceptance criteria, settled decisions, Git status, changed files, verification evidence, blockers, and exact next action. Continue in this task from that checkpoint without repeating completed work. Never copy conversation history or commit/push agent artifacts.

Compaction alone does not require a new task. When you explicitly want to switch:

> Update the checkpoint, then create one new task in this saved project using the local checkout. Ask it to continue from **[handoff path]**, project instructions, Git state, changed files, verification evidence, and the exact next action. Record the successor task ID in the checkpoint.

This task-creation prompt is specific to the Codex desktop app.

## 7. Authorize delegation when useful

Subagents are opt-in. Add this to a task when independent work would help:

> You may use subagents for bounded independent research or review when useful. Keep implementation ownership clear and verify findings before integrating them.

## Astra baseline and trial

The operating rules live in `~/.codex/AGENTS.md`; these prompts are examples. Installed skill defaults must follow that policy, including its limits on mandatory approval steps and verification. Recheck conflicts after skill updates rather than editing cached plugin copies.

[OpenAI’s Astra guidance](https://developers.openai.com/api/docs/guides/latest-model) supports explicit end-to-end execution, instruction audits, deliberate delegation, and proportional verification. Preserve the current `low` reasoning effort initially and increase it for difficult tasks when needed.

Our context experiment retains the existing 50,000-token compaction setting and replaces automatic task rollover with continuation from local checkpoints. That threshold is a personal choice, not a model requirement. Over the next few substantial tasks, compare repeated discovery, lost decisions, unnecessary questions, verification quality, and completion time. Adjust based on observed failures.

## Daily cadence

1. Describe one outcome with a concrete reference and observable success criteria.
2. Resolve consequential decisions; plan only when warranted.
3. Continue through implementation and proportional verification.
4. Preserve decisions in a checkpoint when needed and keep working in the same task.
5. Report the result and perform only authorized Git delivery.
