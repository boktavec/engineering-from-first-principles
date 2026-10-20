# Section 01 — Mastery Gate (Self-Paced)

Don't advance because a certain number of days passed. Advance when you can demonstrate these skills independently. Use this as a **self-assessment**, not an AI-assigned score.

## Concept checklist

- [ ] Explain preprocessing, compilation and linking and build a program with terminal Clang.
- [ ] Predict `int`/`double` arithmetic, basic branches and loops.
- [ ] Explain pass-by-value, local scope, prototypes and function responsibilities.
- [ ] Draw a fixed array in contiguous memory and explain its indexing and bounds.
- [ ] Explain `ptr`, `*ptr`, `&ptr`, and how a pointer passed by value can modify another object.
- [ ] Implement linear search without a solution template.
- [ ] Implement a one-pass array/state algorithm and explain its invariant.
- [ ] Distinguish time complexity from auxiliary-space complexity, including consecutive vs nested loops.
- [ ] Handle empty/invalid data without undefined behavior or unexamined arithmetic errors.
- [ ] Use compiler warnings, a debugger, and sanitizer feedback to investigate a bug.
- [ ] Explain why each function in my capstone exists and when I'd simplify it.
- [ ] Review a proposed AI refactor: distinguish a real correctness/efficiency gain from added abstraction.

## Unseen transfer challenge — Ski Lift Passenger Counter

**Try it without revisiting past solutions.** New problem, same fundamentals.

A ski resort tracks the number of passengers waiting at a lift at successive observation points. For a fixed array of integer queue lengths, implement a summary that reports:

1. Minimum and maximum queue length and their **earliest indices**.
2. The number of **direction changes** across consecutive *non-equal* differences (increasing then decreasing or decreasing then increasing). Repeated equal values do not create a direction change and should not reset the last nonzero direction.
3. The **longest run of consecutive equal queue lengths**, returning its length and earliest starting index.
4. Whether any negative queue readings are present; if so, report invalid data rather than silently treating negative people as real counts.

**Constraints:** Use fixed arrays, explicit length, O(n) time and O(1) auxiliary space. Choose a clear no-data contract. Test an empty array, one element, entirely flat values, repeated equal runs, and alternating up/down changes. Implement independently and explain state updates.

## Test of understanding

Close references and answer these aloud or in writing:

- Why does passing an array to a C function usually require passing its length separately?
- What could go wrong with `a[i+1]` at the last index?
- How can a function set two caller-visible results without returning a heap-allocated object?
- What's the evidence that an optimization makes the code better?
- Can you reason about the correct answer on a new input **before** running your code?

## Proceed / revisit decision

**Ready:** core practice independently solved, capstone meets requirements, transfer challenge handled without a copied pattern, and you can explain the memory and complexity concepts.

**Revisit:** if you can only reproduce past solutions, need AI to invent your algorithm, can't explain pointer/value behavior, or lack confidence testing your boundary conditions. Repeat with a different problem rather than memorizing answers.

After confirming readiness, update `docs/PROGRESS.md`, write your own section reflection using the provided template, and request a complete **Section 02 — Memory & Ownership** packet from Codex. No automatic progression or calendar wait is required.
