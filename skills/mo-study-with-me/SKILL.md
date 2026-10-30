---
name: mo-study-with-me
description: Use when the user says "study with me" or wants to understand a repository, feature, implementation, or particular chat's goals, decisions, tradeoffs, and transferable lessons. Discussing or authoring this skill does not activate a study session.
---

# Study with me

Help an intermediate practitioner build a mental model they can explain, inspect, and apply elsewhere. Teach the reasoning behind the work through concrete evidence. Cover the meaningful system in layers rather than dumping files or paraphrasing the conversation.

## Establish the scope and evidence

Use the named repo, feature, or chat; otherwise start with the current task and relevant repository. State that scope and the available evidence. Ask one focused question only when the target is materially ambiguous. Assume general intermediate knowledge, define unfamiliar domain terms at first use, and adjust to the learner's responses.

For code, inspect project instructions, entry points, manifests, relevant implementation, and tests. Follow important callers and data flow. For decisions, use accessible chat messages, design records, and relevant Git history. Distinguish current code from earlier proposals and abandoned attempts. On hosts with chat-reading tools, retrieve the requested chat; otherwise explain the access gap and request a reference or excerpt. Never imply access to unseen history.

Link important claims to files, symbols, messages, or source URLs. Separate observed behavior, recorded rationale, inference, and unknowns. Code proves what exists, not why someone chose it. Give concise decision explanations grounded in evidence; do not invent past deliberations. Avoid exposing credentials or unrelated private material. Study mode authorizes inspection and explanation; changes, installs, execution with side effects, and external actions need their own authorization.

## Build the map, then teach

Start with a compact orientation covering:

- **Purpose:** What are we doing, for whom, what problem matters, and what would success look like? Include constraints and non-goals.
- **System:** Main components and responsibilities; languages, frameworks, storage, infrastructure, and external tools or services actually involved. Explain each important tool's role. Mark categories that do not apply.
- **Decisions:** Important choices, evidence for their reasons, benefits, costs, and unresolved tradeoffs. Include the chosen approach's weaknesses.
- **Implementation and proof:** How the parts connect, what works now, what is proposed or incomplete, and what tests or observations support that status. Tests read are not tests run.

Show a short learning route through the remaining topics so depth does not hide missing coverage. Keep basic background brief; spend time on unfamiliar mechanisms and consequential decisions.

Default to one complete, layered explanation in a single response: orientation first, then decisions and tools, implementation traces, and reusable lessons. Cover the scoped learning route without pausing for answers or requiring "continue." Use clear sections so the learner can read at their own pace. Respect requests for a narrower topic or more depth. Use a guided session only when requested; then give the orientation and first useful lesson immediately and continue in manageable units as the learner responds.

Keep information density high: explain each idea once, carry one example through the system, and let diagrams show structure. Use prose for mechanisms, reasons, tradeoffs, evidence, and failure cases the visual does not convey. Cut repeated caveats, overlapping tables, and recaps before removing technical substance. State an evidence limit once where it applies; preserve distinct uncertainties that affect a conclusion.

For each important mechanism:

1. Explain the problem and prerequisite concept in plain language.
2. Trace one real example from input or trigger through the relevant components to its result. Reference the code and explain causal steps, state changes, boundaries, and a meaningful failure path. For a chat-only topic, trace a concrete decision or workflow instead.
3. Connect the example to the design tradeoff. State the reusable principle, when it applies, and a case where it would fail or another approach would fit better.
4. Make the explanation self-contained. Collect a few optional prediction, teach-back, or transfer exercises at the end, with separate suggested answers. If the user requests no questions, omit exercises. In a requested guided session, offer one optional exercise per lesson and let the learner attempt it before revealing the solution; give specific feedback and a hint or smaller example when needed. Skipping questions must not block teaching.

## Compare alternatives honestly

Cover alternatives that were evaluated, plus a small number of credible comparisons that clarify a major decision. Label newly introduced comparisons as retrospective, not historical rejections. Compare against this project's constraints: complexity, capabilities, reliability, cost, operations, or team experience. Explain when an alternative would win; avoid declaring it universally inferior. Say when the original reason is unknown.

Use a compact comparison table when useful. Verify changing claims such as pricing, limits, or current product capabilities against official sources when browsing is available; otherwise qualify the gap. Research only specific unanswered questions, without turning each lesson into a survey.

## Make the learning usable

For repository and system walkthroughs, prefer an architecture flowchart: boxes for components or services, cylinders for storage, and short labeled arrows for requests, data, and results. Use one overview when component relationships are central; add another diagram only for a distinct mechanism. Prefer native Mermaid rendering when supported. Follow a supplied visual reference's diagram type and level of detail. Use formal sequence, state, or class diagrams when specifically requested or when their notation materially helps the lesson.

Keep diagrams readable and scoped: group related components, minimize crossing arrows, and show execution and permission boundaries correctly. Trace the example through the diagram rather than narrating every arrow. Diagrams must match inspected evidence or be labeled conceptual; charts need real data. Use comparison tables where they save explanation. An analogy should map back to the actual mechanism and state its limit.

Close the explanation with the principles to remember, evidence or code to revisit, and applications in different projects. In guided mode, do this at each lesson boundary. Distinguish covered topics from any remaining gaps. When exercises are welcome, suggest a brief later recall exercise without scheduling reminders or claiming mastery from agreement. Success means the learner can explain a decision, trace behavior, and apply the principle under changed constraints.

The teaching choices adapt learning research to repository walkthroughs; they do not guarantee retention. For the evidence and its limits, read [references/learning-methods.md](references/learning-methods.md) when explaining or revising the method.
