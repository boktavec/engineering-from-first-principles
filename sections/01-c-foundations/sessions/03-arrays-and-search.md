# Session 03 — Fixed Arrays, Memory Layout & Linear Search

**Goal:** Understand contiguous arrays, bounds, index access and search.

## Topics

Fixed-size arrays, declaration/initialization, indexing, `sizeof` where the array type is still known, passing arrays to functions (array-to-pointer conversion), providing explicit lengths, linear search, O(1) access vs O(n) scanning.

## Study

1. Read [Beej — Arrays](https://beej.us/guide/bgc/html/split/arrays.html), focusing on declarations, indexing, bounds and initial array/function behavior.
2. Watch relevant material in [CS50 — Arrays](https://cs50.harvard.edu/x/weeks/2/).
3. Draw five adjacent cells for `int values[5] = {10,20,30,40,50};` including indices, values and an illustrative address sequence.
4. Compare the **numeric** addresses of `&values[0]` and `&values[1]` with `sizeof(int)`. The exact addresses vary; the spacing of adjacent elements is what matters.
5. Investigate the difference between `sizeof(values)` inside the declaring scope and `sizeof(parameter)` when an array is passed to a function. Don't derive an array's length from pointer size.

## Core problem — Library Shelf Audit

A library records its book counts per shelf:

```c
int books[] = {12, 4, 8, 3, 15, 4, 9};
```

Write clear functions that calculate total books, the minimum count with its **earliest shelf index**, the first shelf containing fewer than 5 books, and the total shelves below that threshold.

**Contract:** Indices are zero-based. For an empty array, don't dereference elements. Choose and document a consistent error/no-result convention (return status plus output pointer is introduced later; for now a sentinel can work if unambiguous). Pass length explicitly to functions.

**Build-up:** Total → minimum → first match → match count → tie and empty cases.

**Stretch:** Calculate multiple statistics in one pass, and explain whether reducing passes improves meaningful performance at small sizes. Revisit the function design so it remains readable.

## Engineering analysis

- Why is `books[i]` O(1) but finding the minimum O(n)?
- Why is `books[7]` invalid here? Out-of-bounds access invokes undefined behavior; don't run it just to observe what happens.
- What does *contiguous memory* mean and how does it affect real performance?

## Closed-notes quiz

1. Why is element access by index constant time?
2. Why must a function generally receive an explicit array length?
3. What guarantees does C make—and not make—about array indexing?
4. Explain O(n) and O(1) using today's program.

## Completion evidence

- [ ] Array diagram and correct `sizeof` explanation.
- [ ] All four analyses with tests for ties, empty data and threshold boundaries.
- [ ] Explain memory layout and function argument behavior without notes.
