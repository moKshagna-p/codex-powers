# Workflow requests

Install the [skill folders](../skills/) using the [README instructions](../README.md#install). These are copy-ready requests; reusable procedures and resources live inside each skill. Replace bracketed fields with your task's details.

## 1. Implement an outcome

> Use $implement-outcome to implement **[outcome]**, starting from **[path, example, or URL]**. Success means **[observable criteria]**. Resolve routine details and continue through implementation and relevant verification. For a new project or large ambiguous feature, clarify consequential decisions first. Ask only when the answer materially changes scope or correctness. Do not create plan files or perform Git delivery unless requested.

For discovery only:

> Use $implement-outcome to inspect **[idea]**, clarify consequential decisions, and recommend an approach. Do not edit code yet.

## 2. Build or improve UI

> Use $build-ui to build or improve **[screen/component]** within **[scope]**. Read **[existing DESIGN.md, components, tokens, or visual reference]**, preserve settled conventions, and check responsive behavior, accessibility, and relevant interaction states. Implement and verify the result; report unavailable visual checks.

For a critique only:

> Use $build-ui to review **[screen/component]** and prioritize the five highest-impact issues. Do not implement changes yet.

To establish shared design documentation:

> Use $build-ui to create or update a concise `DESIGN.md` from **[screens, components, tokens, or approved reference]**, adapting the skill's bundled design template. Describe the audience, primary task, visual intent, layout, copy, and interaction states. Link existing components and tokens as sources of truth. Preserve settled decisions and flag consequential conflicts. Do not redesign the UI or install tooling.

## 3. Use Agent Browser for website tasks

> Use $browser-task with the installed `agent-browser` CLI to open **[URL]**, perform **[browser task]**, and verify **[observable result]**. Stay within the requested site and authorized actions. Report observations and capture a screenshot when useful.

## 4. Fix a bug

> Use $fix-bug to fix **[symptom]**. Reproduce it, prove the root cause, then implement the smallest shared fix with regression evidence where practical. Continue through focused verification. Report the cause, change, checks, and remaining gaps.

## 5. Verify and deliver

> Use $verify-work to check **[change]** against **[acceptance criteria]**. Run relevant checks and report actual results and remaining gaps. Perform only explicitly requested Git delivery.

When you want an independent review and minimal corrections:

> Use $verify-work to get a read-only GPT-6.1 Sol High subagent review of **[diff or paths]** against **[acceptance criteria]**. This authorizes that reviewer. Request concrete defects and the smallest necessary fixes. Check each finding, apply only necessary corrections within scope, and rerun affected checks. Avoid speculative features or content expansion. Report if that model or independent review is unavailable.

## 6. Write clearly

> Use $write-clearly to rewrite **[draft]** for **[audience]**. Lead with the decision or request, explain why it matters, and include owners and next steps where relevant. Return a draft without sending it.

## 7. Continue a long task

> Use $checkpoint-task to update a concise local checkpoint under `.codex/handoffs/` with the objective, settled decisions, Git state, changed files, verification evidence, blockers, and exact next action. Check it against the repository. After compaction, continue the same task without repeating completed work or copying conversation history.

## 8. Authorize delegation when useful

> Use $delegate-work to complete **[outcome]** with **[acceptance criteria]**, starting from **[paths or sources]**. You may delegate bounded independent work; use no agents for trivial work, usually one or two when useful, at most three concurrent children, and no nested delegation. Assign explicit ownership and preserve others' edits. Keep consequential decisions, integration, and final verification with the lead. Do not create plan files or perform Git delivery unless requested.

The skill bundles [Codex configuration examples](../skills/delegate-work/assets/codex/). Request configuration changes separately when needed; preserve existing settings and customizations.

## 9. Trial Headroom context compression

> Use $trial-headroom for **[representative task]**, comparing against **[unwrapped baseline]** with the same model, reasoning effort, acceptance criteria, and compaction settings. You may install Headroom and wrap the Codex CLI for this trial. Preserve exact source and verification evidence, retrieve originals when needed, and report correctness, total usage, elapsed time, retries, retrieval failures, and lost details. Inspect durable configuration changes and explain rollback. Do not enable automatic instruction learning or infer savings from advertised benchmarks.

This optional trial targets the Codex CLI. Existing desktop conversations are not validated by the CLI trial.
