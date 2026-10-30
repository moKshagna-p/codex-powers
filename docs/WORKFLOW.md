# Workflow requests

Install the [skill folders](../skills/) using the [README instructions](../README.md#install). These requests are ready to copy; reusable procedures and resources live inside each skill. Replace bracketed fields with your task's details.

## 1. Implement an outcome

> Use implement to implement **[outcome]**, starting from **[path, example, or URL]**. Success means **[observable criteria]**. Resolve routine details and continue through implementation and relevant verification. For a new project or large ambiguous feature, clarify consequential decisions first. Ask only when the answer materially changes scope or correctness. Do not create plan files or perform Git delivery unless requested.

For discovery only:

> Use implement to inspect **[idea]**, clarify consequential decisions, and recommend an approach. Do not edit code yet.

## 2. Build or improve UI

> Use ui to build or improve **[screen/component]** within **[scope]**. Read **[existing DESIGN.md, components, tokens, or visual reference]**, preserve settled conventions, and check responsive behavior, accessibility, and relevant interaction states. Implement and verify the result; report unavailable visual checks.

For a critique only:

> Use ui to review **[screen/component]** and prioritize the five most important issues. Do not implement changes yet.

To establish shared design documentation:

> Use ui to create or update a concise `DESIGN.md` from **[screens, components, tokens, or approved reference]**, adapting the skill's bundled design template. Describe the audience, primary task, visual intent, layout, copy, and interaction states. Link existing components and tokens as sources of truth. Preserve settled decisions and flag consequential conflicts. Do not redesign the UI or install tooling.

## 3. Use Agent Browser for website tasks

> Use browser with the installed `agent-browser` CLI to open **[URL]**, perform **[browser task]**, and verify **[observable result]**. Stay within the requested site and authorized actions. Report observations and capture a screenshot when useful.

## 4. Fix a bug

> Use debug to fix **[symptom]**. Reproduce it, prove the root cause, then implement the smallest shared fix with regression evidence where practical. Continue through focused verification. Report the cause, change, checks, and remaining gaps.

## 5. Verify and deliver

> Use verify to check **[change]** against **[acceptance criteria]**. Run relevant checks and report actual results and remaining gaps. Perform only explicitly requested Git delivery.

When you want an independent review and minimal corrections:

> Use verify to have a high-reasoning subagent review **[diff or paths]** against **[acceptance criteria]** without editing files. Start the reviewer with fresh conversation context and a self-contained brief. This authorizes one reviewer and one initial review pass. Apply justified fixes and rerun checks; use reviewloop when iterative review is requested. Request concrete defects and the smallest necessary fixes. Check each finding, apply only necessary corrections within scope, and rerun affected checks. Avoid speculative features or content expansion. Report if that model or independent review is unavailable.

## 6. Write clearly

> Use write to rewrite **[draft]** for **[audience]**. Lead with the decision or request, explain why it matters, and include owners and next steps where relevant. Return a draft without sending it.

## 7. Continue a long task

> Use checkpoint to update a concise local checkpoint under `.mo-stack/handoffs/` with the objective, settled decisions, Git state, changed files, verification evidence, blockers, and exact next action. Check it against the repository. After compaction, continue the same task without repeating completed work or copying conversation history.

## 8. Authorize delegation when useful

> Use delegate to complete **[outcome]** with **[acceptance criteria]**, starting from **[paths or sources]**. You may delegate bounded independent work; use no agents for trivial work, usually one or two when useful, at most three concurrent children, and no nested delegation. Start new children with fresh conversation context and self-contained briefs; reuse them for related follow-ups. Assign explicit ownership and preserve others' edits. Keep consequential decisions, integration, and final verification with the lead. Do not create plan files or perform Git delivery unless requested.

The skill bundles [Claude Code and Codex preset examples](../skills/delegate/assets/presets/). Request configuration changes separately when needed; preserve existing settings and customizations.

## 9. Trial Headroom context compression

> Use headroom for **[representative task]**, comparing against **[unwrapped baseline]** with the same model, reasoning effort, acceptance criteria, and compaction settings. You may install Headroom and wrap the **[agent CLI, such as claude or codex]** for this trial. Preserve exact source and verification evidence, retrieve originals when needed, and report correctness, total usage, elapsed time, retries, retrieval failures, and lost details. Inspect durable configuration changes and explain rollback. Do not enable automatic instruction learning or infer savings from advertised benchmarks.

This optional trial targets an agent CLI. Existing desktop conversations are not validated by the CLI trial.

## 10. Evolve and shipping

> Evolve and implement **[outcome]**, starting from **[reference]**. Success means **[observable criteria]**. Use one high-reasoning reviewer, fix only justified findings, and leave a verified PR for me to merge.

> Evolve and merge **[outcome]** with **[acceptance criteria]**. Follow the same proof and review requirements, then merge only when the latest head passes the gate and repository protections permit it.

`/evolve` in Claude Code or `$evolve` in Codex selects the skill by name. Natural language activation means a direct task request, not a quotation, discussion, or installation instruction. A narrower request such as "evolve locally, no push" stops at that boundary and reports the missing shipping step.

- `fullstop` directly selects the preparation path. It may create task commits, push the task branch, open the PR, and handle CI; it never merges or enables automatic merging.
- `fullsend` directly selects the merge path. It performs the same work and merges only after the required checks, approval, independent review, and proof cover the final head.
- Both paths use `reviewloop`, `filepr`, and `babysit`. They are alternative endings, not three teams running at once. Installing or documenting these workflows does not execute them.

## 11. Review loop

> Use reviewloop to review **[diff or paths]** against **[acceptance criteria]** with the strongest available model at high reasoning. Start one reviewer with fresh conversation context and a self-contained brief, then reuse it for at most three rounds, with no reviewer children. Apply only justified minimal fixes. Report unresolved issues or unavailable reviewer access rather than silently substituting a weaker model.

Round one covers the scoped change. Later rounds cover meaningful changes and unresolved findings, stopping early on approval or only cosmetic feedback. The same budget covers later CI fixes during Evolve. Normal work can keep the single review prompt in section 5; do not run both independently on the same delivery.

## 12. Sharpen a request

> Use sharpen to improve this prompt: **[draft request]**. Keep its scope, identify the original evidence and appropriate methods, and make success independently checkable. Return the rewritten prompt without implementing it.

## 13. Blast checks and regression tests

> Use blast to assess **[change]** against **[scope]**. Follow consequences beyond the diff, identify the key safety assumption, and run the smallest real check that can disprove it. Keep this review only and do not alter tracked files. Report confirmed risks, cleared risks, and unproven assumptions.

> Use tdd to fix **[bug]** using the nearest cheap regression test. Demonstrate its failure before the fix and success after. If a useful test needs disproportionate infrastructure, use an executable reproduction and disclose the limit.

`debug` uses the regression method when practical. After two failed fixes sharing an assumption, test that assumption before trying again. `verify` uses the solo blast check for consequential indirect effects. Neither method creates an agent panel.

## 14. Unslop writing

> Use unslop to edit **[text or file]** for **[audience]**. Preserve the facts and meaning. Remove filler, vague claims, jargon, and unnecessary dash punctuation from body prose. Preserve punctuation already present in original titles and names, along with identifiers, commands, URLs, and code. Return a draft unless file edits are explicitly requested.

`write` already applies this method as part of rewriting professional messages. Neither skill sends or publishes the result.

## 15. Open and monitor a PR

> Use filepr to open a PR for **[published branch]** against **[target branch]**. Check for an existing PR, lead with the problem and resulting behavior, include actual verification, and leave it unmerged. Preserve any explicit draft requirement.

> Use babysit to monitor **[PR URL]** and fix justified CI or review findings within **[scope]**. You may push those verified fixes to this task branch. Do not merge, enable auto merge, enter a merge queue, or close the PR. Report missing approvals or an unavailable waiting mechanism.

`babysit` uses one supported watcher or `gh pr checks --watch --required --fail-fast` for CI, then checks reviews separately. It does not require additional model providers or paid review bots. Missing review or approval is never treated as success.

## 16. Selected install dependencies

Copy all folders for the simplest installation. If selecting individual skills, include their linked dependencies recursively:

| Selected skill | Required siblings |
| --- | --- |
| evolve | fullstop and fullsend |
| fullstop | fullsend |
| fullsend | implement, verify, reviewloop, filepr, and babysit |
| verify | review; blast for indirect safety checks; reviewloop when Evolve owns review |
| reviewloop | review |
| debug | tdd |
| write | unslop |

`review` runs without sibling skills for a single pass; install `reviewloop` too only for its optional iterative workflow. Other standalone skills run in the main agent unless authorized delegation is requested. Keep each adapted skill's bundled `LICENSE` when copying it. Git and model access remain requirements, not capabilities installation can create.

## 17. Study the work

> Study with me. Use study-with-me for **[this repository, feature, or chat reference]**. Assume intermediate knowledge. Give me one complete, concise, layered explanation I can read at my own pace: what we are doing and why, success criteria and constraints, the stack and external tools, important decisions and alternatives, and how the implementation works through one connected example. Use a compact architecture flowchart when component relationships are central; let it show structure while the prose explains mechanisms and tradeoffs. Ground explanations in accessible code and conversation evidence; distinguish recorded reasons from inference. Help me apply each important principle in another project. Put any optional exercises and separate suggested answers at the end; do not pause for my responses.

For a guided session instead:

> Use study-with-me to guide me through **[scope]** one lesson at a time. Start with an overview and one real example, then offer an optional prediction or teach-back question before continuing. Cover important decisions, implementation paths, failure cases, verification evidence, and reusable lessons.

For a visual explanation:

> Study with me through **[flow or decision]**. Use an architecture flowchart with component boxes, storage cylinders, and labeled arrows showing requests, data, and results. Follow **[visual reference, if supplied]**. Keep the prose concise and explain what the diagram cannot show. Add a comparison table only where useful. Show where the real code supports the explanation and when an alternative would be a better fit.

The skill teaches through inspection and explanation. It does not change the project or install tools. Its [learning-methods reference](../skills/study-with-me/references/learning-methods.md) records the research and limits behind the teaching approach. Copy the entire skill folder so the reference travels with it.

## 18. Review with evidence and a fix handoff

> Use review on **[PR URL, branch/base, local changes, or explicit paths]** against **[requirements or reference]**. Review only. Return prioritized defects with the trigger, failure path, proof status, precise locations, minimal fix scope, and regression checks. Separate concrete improvements from bugs and unresolved questions. Include a copyable fix handoff and review snapshot so another agent can resume without repeating the investigation.

For an independent pass:

> Use review with one high-reasoning reviewer in fresh conversation context on **[target]** against **[requirements]**. This authorizes one read-only reviewer and one review pass. Give it a self-contained brief and repository access. Return the shared report and fix packets; do not edit code or perform Git delivery.

To apply selected findings afterward:

> Fix **[R1, R2]** from **[review report]** within **[scope]**. Verify that the snapshot and affected contracts still match, reread the exact edit targets, then use the existing fix packets. Reopen investigation only where evidence is stale or incomplete. Run the specified regression checks and report outcomes. No commits, pushes, or PR comments.

`review` supplies the method for `verify` and `reviewloop`; it does not add another review pass. Improvements are nonblocking unless an explicit requirement makes them necessary. Reviews label reproduced versus source-traced evidence and disclose missing coverage; they do not invent a readiness score. This standalone method needs no Greptile service, and its detection quality has not been benchmarked against Greptile.
