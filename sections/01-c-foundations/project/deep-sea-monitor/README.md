# Capstone — Deep-Sea Expedition Monitor

## Scenario

You work with a fictional ocean research team's sensor stream. Build a small C tool that summarizes signal-intensity readings and flags unusual periods. The point is **problem decomposition, data analysis, correct algorithms and clear interfaces**, not UI sophistication.

## Sample data

```c
int readings[] = {12, 14, 18, 17, 22, 29, 31, 30, 19, 20, 28, 33};
```

Assume an **alert** means a reading is **strictly greater than** the threshold; use threshold `25` for the sample. An alert streak is a **contiguous** run of alert readings.

## Required results for the sample

| Statistic | Expected |
| --- | --- |
| Reading count | 12 |
| Minimum reading | 12 |
| Maximum reading | 33 |
| Arithmetic mean | 22.75 |
| Number of readings > 25 | 5 |
| Longest contiguous alert streak | 3 |
| Largest absolute difference between adjacent readings | 11 |

The largest adjacent absolute difference is between indices `7` and `8` (`30` → `19`). Do **not** hardcode the results.

## Requirements

1. Accept a fixed array, its length, and a configurable threshold.
2. Calculate every listed statistic and display them intelligibly.
3. Separate calculation from output; split responsibilities into reasonably scoped functions.
4. Decide how to communicate when an input has **zero readings**. Never read an element in an empty array or divide by zero.
5. Use C types carefully, especially for `size_t` indices, signed readings, summing values, and absolute differences. Avoid integer overflow in intermediate arithmetic; document supported input ranges if necessary.
6. Pass arrays and lengths explicitly. Use pointers when a function needs to return multiple values or modify caller-owned data.
7. **No dynamic allocation** in this section.
8. Use robust tests and warning-enabled / sanitizer-enabled builds where supported.
9. Write and justify expected time complexity and auxiliary-space complexity, including number of traversals.
10. Make code that another engineer can understand without a tour through excessive abstraction.

## Before coding — design record

Record your answers in `../../notes/`:

- What's the API/contract of your analysis functions?
- What is your representation of a "no result" (e.g., empty input)?
- Which measurements share useful traversal state, and which might be clearer in separate functions?
- Which invariants are you relying on?
- What does correctness look like for alerts at the first/last index, ties, a singleton array and an empty array?
- What could overflow, and how do you prevent or limit it?

## Testing expectations

Include tests or manual assertions for at least these **categories**:

- Provided sample exact results.
- Empty array and one-element array.
- No alerts; all alerts; alert exactly equal to threshold (not an alert).
- Longest streak at beginning, in middle, and at final element; equal-length streak tie.
- Increasing, decreasing, flat and alternating readings.
- Large positive/negative readings if your chosen types/limits allow them; test correctness of absolute differences.
- A threshold change that doesn't require rewriting the algorithm.

Create your own concrete test values and expected outcomes before implementing. **Don't ask Codex to write an answer key or the production solution.** Codex may help discuss which cases are missing once you've tried.

## Stretch (optional)

1. Also return inclusive start/end indices of the longest alert streak; document ties.
2. Return the earliest maximum index when tied.
3. Add a threshold configuration mode without entangling I/O and core logic.
4. Implement a simple multi-pass design and a combined-pass design; compare readability and profile if dataset is large enough to make measurement meaningful.
5. Explain how 100,000 or 10,000,000 readings change time/memory usage *without pretending to have benchmarked them*.

## Review and acceptance

The capstone is complete when you can demonstrate sample and edge-case correctness, trace how the code handles state, defend algorithmic complexity and memory choices, explain any sanitizers or debugger findings, and identify at least one trade-off you intentionally made.

Afterward, complete [`../../MASTERY.md`](../../MASTERY.md) and your own section reflection. There are **no deadlines**.
