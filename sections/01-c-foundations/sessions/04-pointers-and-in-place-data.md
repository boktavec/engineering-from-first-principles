# Session 04 — Pointers & In-Place Data Modification

**Goal:** Know what an address and pointer value are, and safely update caller-owned data.

## Topics

`&` address-of, `*` dereference, pointer types, pass-by-value of pointers, pointer/array relationship, in-place modification, pointer validity and bounds.

## Study

1. Read [Beej — Pointers](https://beej.us/guide/bgc/html/split/pointers.html), starting with 5.1–5.4.
2. Revisit the array/pointer parts of [Beej — Arrays](https://beej.us/guide/bgc/html/split/arrays.html).
3. Draw separate memory locations for an integer variable and a pointer pointing at it. Predict and run a *valid* simple example: `int score=42; int *p=&score; *p=75;`.
4. Explain `p` versus `*p` versus `&p`. Confirm via debugger or printouts when suitable.
5. Explain why copying a pointer into a function still permits modifying the **pointee**.

## Core problem — Rescue Drone Calibration

Two sensors return arbitrary integer battery percentages. Write functions that:

1. Clamp each reading into [0, 100], using pointers to update the caller's values.
2. Order two readings so the first is always >= the second, swapping *only when necessary*.
3. Let the caller examine the corrected values after the function returns.

Example raw pair: `115`, `-8` → corrected pair: `100`, `0`.

**Contract:** Use valid pointers to actual variables; no heap allocation. For this exercise, the caller must provide non-null valid pointers, or your API may explicitly detect `NULL` and report failure. If you add null handling, explain that it still cannot validate arbitrary non-null pointer addresses.

**Build-up:** Clamp one variable → clamp pair → swap pair → test equal values and boundaries.

**Stretch:** Apply calibration to each element of a caller-owned fixed-size array **in place**, without creating a second array. Demonstrate with an array that includes -1, 0, 100 and 101.

## Engineering analysis

- How is a pointer argument passed, and what can the callee change?
- Compare mutation and return-value APIs. Which makes effects clearer for this assignment?
- What is the auxiliary-space cost of the in-place variant?
- Why shouldn't you dereference invalid/uninitialized pointers?

## Closed-notes quiz

1. Explain `ptr`, `*ptr`, and `&ptr` with a memory diagram.
2. Is a pointer argument passed by reference or by value in C? Why?
3. Are arrays and pointers identical types? How are they related?
4. What does it mean for a pointer to be valid for a dereference?

## Completion evidence

- [ ] Explain a diagram of pointer and pointee without notes.
- [ ] Code modifies caller-owned valid values as intended.
- [ ] Tests include boundaries, ties and in-place array update.
