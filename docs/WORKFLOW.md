# Workflow requests

Install the [skill folders](../skills/) using the [README instructions](../README.md#install). These requests are ready to copy; reusable procedures and resources live inside each skill. Replace bracketed fields with your task's details.

## 1. Implement an outcome

> Use $implement to implement **[outcome]**, starting from **[path, example, or URL]**. Success means **[observable criteria]**. Resolve routine details and continue through implementation and relevant verification. For a new project or large ambiguous feature, clarify consequential decisions first. Ask only when the answer materially changes scope or correctness. Do not create plan files or perform Git delivery unless requested.

For discovery only:

> Use $implement to inspect **[idea]**, clarify consequential decisions, and recommend an approach. Do not edit code yet.

## 2. Build or improve UI

> Use $ui to build or improve **[screen/component]** within **[scope]**. Read **[existing DESIGN.md, components, tokens, or visual reference]**, preserve settled conventions, and check responsive behavior, accessibility, and relevant interaction states. Implement and verify the result; report unavailable visual checks.

For a critique only:

> Use $ui to review **[screen/component]** and prioritize the five most important issues. Do not implement changes yet.

To establish shared design documentation:

> Use $ui to create or update a concise `DESIGN.md` from **[screens, components, tokens, or approved reference]**, adapting the skill's bundled design template. Describe the audience, primary task, visual intent, layout, copy, and interaction states. Link existing components and tokens as sources of truth. Preserve settled decisions and flag consequential conflicts. Do not redesign the UI or install tooling.

## 3. Use Agent Browser for website tasks

> Use $browser with the installed `agent-browser` CLI to open **[URL]**, perform **[browser task]**, and verify **[observable result]**. Stay within the requested site and authorized actions. Report observations and capture a screenshot when useful.

## 4. Fix a bug

> Use $debug to fix **[symptom]**. Reproduce it, prove the root cause, then implement the smallest shared fix with regression evidence where practical. Continue through focused verification. Report the cause, change, checks, and remaining gaps.

## 5. Verify and deliver

> Use $verify to check **[change]** against **[acceptance criteria]**. Run relevant checks and report actual results and remaining gaps. Perform only explicitly requested Git delivery.

When you want an independent review and minimal corrections:

> Use $verify to have a GPT-6.1 Sol High subagent review **[diff or paths]** against **[acceptance criteria]** without editing files. This authorizes one reviewer and one initial review pass. Apply justified fixes and rerun checks; use solloop when iterative review is requested. Request concrete defects and the smallest necessary fixes. Check each finding, apply only necessary corrections within scope, and rerun affected checks. Avoid speculative features or content expansion. Report if that model or independent review is unavailable.

## 6. Write clearly

> Use $write to rewrite **[draft]** for **[audience]**. Lead with the decision or request, explain why it matters, and include owners and next steps where relevant. Return a draft without sending it.

## 7. Continue a long task

> Use $checkpoint to update a concise local checkpoint under `.codex/handoffs/` with the objective, settled decisions, Git state, changed files, verification evidence, blockers, and exact next action. Check it against the repository. After compaction, continue the same task without repeating completed work or copying conversation history.

## 8. Authorize delegation when useful

> Use $delegate to complete **[outcome]** with **[acceptance criteria]**, starting from **[paths or sources]**. You may delegate bounded independent work; use no agents for trivial work, usually one or two when useful, at most three concurrent children, and no nested delegation. Assign explicit ownership and preserve others' edits. Keep consequential decisions, integration, and final verification with the lead. Do not create plan files or perform Git delivery unless requested.

The skill bundles [Codex configuration examples](../skills/delegate/assets/codex/). Request configuration changes separately when needed; preserve existing settings and customizations.

## 9. Trial Headroom context compression

> Use $headroom for **[representative task]**, comparing against **[unwrapped baseline]** with the same model, reasoning effort, acceptance criteria, and compaction settings. You may install Headroom and wrap the Codex CLI for this trial. Preserve exact source and verification evidence, retrieve originals when needed, and report correctness, total usage, elapsed time, retries, retrieval failures, and lost details. Inspect durable configuration changes and explain rollback. Do not enable automatic instruction learning or infer savings from advertised benchmarks.

This optional trial targets the Codex CLI. Existing desktop conversations are not validated by the CLI trial.

## 10. Evolve and shipping

> Evolve and implement **[outcome]**, starting from **[reference]**. Success means **[observable criteria]**. Use one Sol High reviewer, fix only justified findings, and leave a verified PR for me to merge.

> Evolve and merge **[outcome]** with **[acceptance criteria]**. Follow the same proof and review requirements, then merge only when the latest head passes the gate and repository protections permit it.

`$evolve` is the explicit Codex invocation when selecting the skill by name. Natural language activation means a direct task request, not a quotation, discussion, or installation instruction. A narrower request such as "evolve locally, no push" stops at that boundary and reports the missing shipping step.

- `$fullstop` directly selects the preparation path. It may create task commits, push the task branch, open the PR, and handle CI; it never merges or enables automatic merging.
- `$fullsend` directly selects the merge path. It performs the same work and merges only after the required checks, approval, Sol review, and proof cover the final head.
- Both paths use `$solloop`, `$filepr`, and `$babysit`. They are alternative endings, not three teams running at once. Installing or documenting these workflows does not execute them.

## 11. Sol review loop

> Use $solloop to review **[diff or paths]** against **[acceptance criteria]** with GPT-6.1 Sol at high reasoning. Use one reviewer, at most three rounds, and no reviewer children. Apply only justified minimal fixes. Report unresolved issues or unavailable Sol access rather than substituting a model.

Round one covers the scoped change. Later rounds cover meaningful changes and unresolved findings, stopping early on approval or only cosmetic feedback. The same budget covers later CI fixes during Evolve. Normal work can keep the single review prompt in section 5; do not run both independently on the same delivery.

## 12. Sharpen a request

> Use $sharpen to improve this prompt: **[draft request]**. Keep its scope, identify the original evidence and appropriate methods, and make success independently checkable. Return the rewritten prompt without implementing it.

## 13. Blast checks and regression tests

> Use $blast to assess **[change]** against **[scope]**. Follow consequences beyond the diff, identify the key safety assumption, and run the smallest real check that can disprove it. Keep this review only and do not alter tracked files. Report confirmed risks, cleared risks, and unproven assumptions.

> Use $tdd to fix **[bug]** using the nearest cheap regression test. Demonstrate its failure before the fix and success after. If a useful test needs disproportionate infrastructure, use an executable reproduction and disclose the limit.

`debug` uses the regression method when practical. After two failed fixes sharing an assumption, test that assumption before trying again. `verify` uses the solo blast check for consequential indirect effects. Neither method creates an agent panel.

## 14. Unslop writing

> Use $unslop to edit **[text or file]** for **[audience]**. Preserve the facts and meaning. Remove filler, vague claims, jargon, and unnecessary dash punctuation while preserving identifiers, commands, URLs, and code. Return a draft unless file edits are explicitly requested.

`write` already applies this method as part of rewriting professional messages. Neither skill sends or publishes the result.

## 15. Open and monitor a PR

> Use $filepr to open a PR for **[published branch]** against **[target branch]**. Check for an existing PR, lead with the problem and resulting behavior, include actual verification, and leave it unmerged. Preserve any explicit draft requirement.

> Use $babysit to monitor **[PR URL]** and fix justified CI or review findings within **[scope]**. You may push those verified fixes to this task branch. Do not merge, enable auto merge, enter a merge queue, or close the PR. Report missing approvals or an unavailable waiting mechanism.

`babysit` uses one supported watcher or `gh pr checks --watch --required --fail-fast` for CI, then checks reviews separately. It does not require additional model providers or paid review bots. Missing review or approval is never treated as success.

## 16. Selected install dependencies

Copy all folders for the simplest installation. If selecting individual skills, include their linked dependencies recursively:

| Selected skill | Required siblings |
| --- | --- |
| evolve | fullstop and fullsend |
| fullstop | fullsend |
| fullsend | implement, verify, solloop, filepr, and babysit |
| verify | blast for indirect safety checks; solloop when Evolve owns review |
| debug | tdd |
| write | unslop |

The remaining new skills run in the main agent without sibling workflows. Keep each adapted skill's bundled `LICENSE` when copying it. Git and model access remain requirements, not capabilities installation can create.
