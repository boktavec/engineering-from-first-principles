# Session 05 — One-Pass Algorithms & Complexity

**Goal:** Identify sufficient state, write an O(n)-time solution with O(1) auxiliary space, and explain why it is correct.

## Topics

Linear traversal, current/best state, off-by-one boundaries, ties, loop invariants, O(1) vs O(n) vs O(n²), auxiliary space vs input space, independent correctness and performance evaluation.

## Study

1. Review arrays and traversal from [CS50 — Arrays](https://cs50.harvard.edu/x/weeks/2/).
2. Use the [Big-O Cheat Sheet](https://www.bigocheatsheet.com/) as an overview, then analyze your own code instead of recalling the table.
3. Trace by hand an input that increases, plateaus, declines, then increases again. Determine what values you must remember to identify the longest streak.
4. Explain why **two consecutive O(n) loops are still O(n)** and how nested loops can become O(n²).

## Core problem — Music Festival Attendance Trends

Hourly attendance values:

```c
int attendance[] = {30,45,50,50,75,90,20,40};
```

Find the **longest contiguous strictly increasing run**; return its length and inclusive start/end indices.

A plateau (`50,50`) breaks the streak. An array of one element has a longest run of length 1. An empty input has no valid indices: choose and document a way to communicate that.

**Contract:** Single pass (O(n) time) and O(1) auxiliary space, with no new array. On equal-length runs, choose the **earliest**.

**Build-up:** First get the length correct → track boundaries → apply tie-break rule → empty / one-element / equal-only cases.

**Stretch:** Write a simple (potentially less efficient) alternative and compare it. Don't automatically prefer an overcomplicated optimized version without understanding it.

## Engineering analysis

- Identify the minimal "current run" and "best run" state.
- Give the loop invariant in plain language.
- Explain how you update the best answer when the run ends at the final item.
- Prove why the algorithm does not require nested loops.

## Closed-notes quiz

1. What distinguishes time complexity from auxiliary-space complexity?
2. Why do two sequential O(n) passes remain O(n)?
3. Under what conditions do two nested loops become O(n²)?
4. Why isn't shortest code automatically the best algorithm?

## Completion evidence

- [ ] Correct run length, inclusive indices and tie-breaking.
- [ ] Edge cases are independently tested.
- [ ] Explain O(n) time / O(1) auxiliary space and defend correctness without notes.
