# Session 02 — Functions, Loops & Problem Decomposition

**Goal:** Break behavior into small functions, predict pass-by-value, and reason about loops.

## Topics

Function declarations/prototypes, parameters, return values, local scope, `for`/`while`, repeated calculation, loop termination and invariant thinking.

## Study

1. Read [Beej — Functions](https://beej.us/guide/bgc/html/split/functions.html).
2. Revisit the functions/loops portions of [CS50 — C](https://cs50.harvard.edu/x/weeks/1/).
3. Predict what happens when a function adds 5 to a copied integer parameter but returns `void`. Test it.
4. Change the design so the caller receives the updated value **without pointers**. Explain why it works.

## Core problem — Pinball Tournament Scoring

A pinball round awards 10 points per regular target and 25 points per bonus target. **A round with at least 3 bonus targets has its round score doubled.** Calculate individual round results, accumulate a tournament total, and report the highest-scoring round.

Start with **four hardcoded rounds** represented by separate function calls in `main`. Use a scoring function and an aggregation/update function rather than repeating scoring rules. You have not studied arrays yet, so keep the caller simple.

**Sample rounds to evaluate:** (regular, bonus) = (3,1), (2,3), (5,0), (1,4). Work out the expected scores by hand first; compare with output.

**Contracts:** Handle negative hit counts deliberately (e.g., reject them); explain integer overflow risks in score accumulation. For tied high scores, consistently favor the first round.

**Build-up:** Correct single-round calculation → several calls → running total → highest round → input validation.

**Stretch:** Design a loop-based variant with a deterministic `get_round_hits(round_number)` helper or carefully checked terminal input. You may study a small amount of safe input parsing for this extension; it is **optional**, not required to complete the session. Add a tournament-level bonus every fourth round and keep the rules testable.

## Engineering analysis

- Why should one function calculate scores instead of copying arithmetic in several locations?
- How does changing a function parameter differ from returning a value?
- If you process `r` rounds, how do runtime and additional storage grow with `r`?
- State the invariant maintained by the running total and highest score.

## Closed-notes quiz

1. Why does changing a copied `int` parameter not change the caller's variable?
2. Why might a function prototype be necessary?
3. What is local scope? How is it different from global state?
4. How can you verify a loop terminates and doesn't skip its final item?

## Completion evidence

- [ ] Pure or nearly pure scoring function; no copied scoring rules.
- [ ] Correct results and ties from hardcoded test rounds.
- [ ] Explain parameters, return values and scope without notes.
- [ ] Identify at least two invalid inputs/edge cases and handle them.
