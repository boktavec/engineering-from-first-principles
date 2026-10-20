# Session 06 — Mini-Project, Integration & Review

**Goal:** Independently combine compilation, types, functions, arrays, pointers, search, one-pass algorithms and complexity reasoning into a useful program.

## Project

Read and implement: [Deep-Sea Expedition Monitor](../project/deep-sea-monitor/README.md).

The problem domain is independent of the preceding exercises. Don't paste previous code without re-evaluating the new contract.

## Before writing code

1. Restate all requirements in your own words.
2. Choose small, clear function interfaces and error/no-data conventions.
3. Identify what can be computed in one traversal and whether combining everything truly simplifies the design.
4. Work through the provided sample *by hand*.
5. Make a test matrix covering empty data, one item, ties, no alerts, all alerts, negative differences and adjacent jumps.

## Build → test → review

- Implement without asking AI for full functions.
- Compile warning-enabled; run sanitizer instrumentation when available.
- Step through at least one tricky boundary scenario in a debugger or a written trace.
- Ask AI to review **after** you have your own passing solution; decide which suggestions are well supported.
- Explain chosen time/space complexity and limitations.

## Closed-notes quiz

1. How would you explain fixed-array memory layout to a TypeScript developer?
2. How do you pass a result back from a C function when you need more than one output value?
3. Which operations in the monitor are O(n), and which need no additional pass?
4. If the monitor uses more memory than expected, how would you investigate before optimizing?
5. How would you judge whether an AI refactor actually improves this code?

## Completion

- [ ] Every core acceptance criterion is met.
- [ ] Written test cases cover more than the sample input.
- [ ] Debugging tools/observations recorded.
- [ ] Independent design and complexity justification.
- [ ] Mastery/transfer assessment in [`../MASTERY.md`](../MASTERY.md) before moving on.
