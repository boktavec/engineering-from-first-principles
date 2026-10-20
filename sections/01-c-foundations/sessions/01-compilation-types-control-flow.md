# Session 01 — Compilation, Types & Control Flow

**Goal:** Build and run a C program; predict arithmetic and control-flow behavior; explain how code becomes an executable.

## Topics

- `main`, `#include`, compiler versus linker, preprocessing.
- `int`, `double`, `char`, `sizeof` and simple initialization.
- `if`/`else`, `for`/`while`, integer division and remainder.
- Type conversions and safe thinking about signed integer overflow.

## Study: just enough to solve it

1. Read [Beej — Hello, World!](https://beej.us/guide/bgc/html/split/hello-world.html) focusing on 2.2–2.5.
2. Read relevant parts of [Beej — Variables and Statements](https://beej.us/guide/bgc/html/split/variables-and-statements.html).
3. Optionally watch relevant shorts in [CS50 — C](https://cs50.harvard.edu/x/weeks/1/).
4. **Without notes**, trace a toy program: what gets compiled, what gets linked, which statements execute, which values are integers?

## Predict → test → explain

Write tiny *separate* experiments to predict `7 / 2` vs `7.0 / 2`, `%` with positive inputs, `sizeof(int)` on your own machine, and a simple conditional boundary. Compile each and compare observation to prediction.

**Don't deliberately execute signed overflow to "discover" its answer**—signed overflow is undefined behavior. Instead, reason about why representable ranges matter; use checked arithmetic where necessary.

## Core problem — Lunar Supply Crates

A station packs `items` supplies into crates of capacity `capacity`. Given two positive or zero/positive integer quantities, calculate:

1. Total crates required.
2. Number of completely full crates.
3. Items in the final **partial** crate; report 0 if none.
4. Unused positions in that partial crate; report 0 if none.

**Example:** `items=47`, `capacity=8` → crates required **6**, full crates **5**, partial-crate items **7**, unused positions **1**.

**Contract:** Define input values in the program; no interactive parsing necessary. A capacity <= 0 is invalid and must not trigger division by zero. Zero items must return all zeros. Exact multiples must not report a phantom partial crate.

**Build-up:** (a) a positive non-multiple, (b) exact multiple, (c) zero items, (d) invalid capacity. Do not copy a solution from the docs.

**Stretch:** Can you avoid floating-point arithmetic? How do you avoid an integer-overflow-prone ceiling-division shortcut?

## Engineering analysis

- Which calculations can run in constant time? Why doesn't processing a million items require a million iterations?
- What happens to your assumptions with large integers or negative items?
- Make a test table with *input, expected values, observed values*.

## Closed-notes quiz (do not reveal answer key before attempt)

1. What's different about `int` and `double`? What does that change about division?
2. Explain preprocessing, compilation and linking at a high level.
3. Why is signed overflow a correctness problem in C?
4. What is `sizeof` measuring, and what should you not assume about platform-specific type sizes?

## Completion evidence

- [ ] Compile a `.c` file from the terminal with warnings enabled.
- [ ] Produce correct results on the stated boundary cases.
- [ ] Explain integer division and the compiler pipeline without notes.
- [ ] Explain runtime and auxiliary space complexity.
