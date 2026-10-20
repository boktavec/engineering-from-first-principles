# Learning Method

## The cycle for every session

1. **Learn:** A small selection of materials. Don't binge tutorials. Note unfamiliar C semantics and compare to Python/TS.
2. **Predict:** Before running experiments, write what you think will happen and **why**. Draw memory diagrams where applicable.
3. **Design:** Restate the problem, constraints and invalid cases. Write a plain-English algorithm and anticipated time / auxiliary-space complexity.
4. **Implement:** Independently write the code. Avoid asking AI to generate whole functions or complete the solution.
5. **Break and verify:** Create boundary cases and expected outputs; use warnings, a debugger and sanitizers. Don't rely on the happy path.
6. **Review:** Ask AI to challenge correctness, efficiency, memory safety and unnecessary complexity. Evaluate its suggestions yourself.
7. **Recall:** Answer the closed-notes quiz and explain the implementation without your editor open.
8. **Transfer:** Solve an unfamiliar problem relying on the same concepts.
9. **Reflect:** Write your own notes/blog. Have AI check factual accuracy, not ghostwrite the learning journey.

## Flexible pacing

A roughly hour-long work block can help focus, but it is **not a rule**. A session can take minutes or several attempts; one sitting may cover multiple sessions. The unit of progress is *mastery*, not days or weeks. Stop when you're mentally fatigued; resume where you left off. Keep notes to avoid losing context.

## Definition of mastered (not merely completed)

- Predict and explain behavior, including edge cases, without running code first.
- Implement independently, then justify your design and complexity.
- Test effectively, interpret compiler and sanitizer feedback, and debug systematically.
- Solve a new problem with changed surface details without memorizing an old answer.
- Recognize when a proposed AI improvement is justified by evidence, rather than automatically accepting it.

## AI boundaries

- **Allowed early:** concept explanations, docs navigation, clarification of problem language, probing questions, tiny isolated examples unrelated to the assignment.
- **After your attempt:** code review, test strategy discussion, hints, challenge questions, explanations of tool output.
- **Avoid:** automatic solutions, copying a working pattern without understanding, asking AI to judge its own code without independent checks.
- **When stuck:** describe your current hypothesis, one thing you tried and observed, then ask for a single hint.

## Problem selection principles

- Keep topics **unrelated** across sessions (shipping, game scoring, libraries, drones, festivals, expedition instruments).
- Increase cognitive complexity, not just input size.
- Revisit prior concepts unexpectedly as skills accumulate.
- Mix algorithmic correctness with C's memory and type pitfalls.
- For system implementations, introduce complexity only to meet measurable requirements.

## Reflection questions

- What did I misunderstand before this session?
- What surprised me about C vs Python/TypeScript?
- Which assumptions were wrong, and how did I verify the truth?
- What problem-solving heuristic will I reuse?
- If AI generated a similar solution in production, would I recognize the edge cases and trade-offs?
