# Self-Paced Curriculum — From C Fundamentals to Systems Engineering

This is a **competency roadmap**, not a scheduled course. Each section is a cluster of related skills and independent problems. Progress as fast as you can **demonstrate** understanding. If a concept needs another session, take it.

## Learning outcomes

1. **Independent problem solving:** define the problem, form hypotheses, choose algorithms, debug, and verify.
2. **Computer fundamentals:** memory, data representation, compilation, ownership, pointers, file and network I/O.
3. **DSA judgment:** build structures, reason about O notation and real costs, select efficient simple approaches.
4. **Software engineering:** design APIs, organize code, test, profile, review, and explain trade-offs.
5. **Systems:** design simplified caches, queues, DBs, servers and gateways; combine and stress them.
6. **AI leverage:** give better technical direction and confidently review generated output for efficiency, maintainability, reliability, and security.

## Track A — C by building and solving

| Section | Primary competencies | Representative problems / projects |
| --- | --- | --- |
| **01. C Foundations** *(fully authored)* | Compilation, types, control flow, functions, fixed arrays, pointers, one-pass algorithms, Big O | Unrelated practice problems; Deep-Sea Expedition Monitor capstone |
| 02. Memory & Ownership | Stack/heap, lifetime, `malloc`/`calloc`/`realloc`/`free`, structs, safer APIs, ownership | Dynamic array, memory experiments, realistic problem set |
| 03. Linear Data Structures | Linked lists, stacks, queues, circular buffers, invariants | Independent data-structure implementations + different application problem |
| 04. Searching, Sorting & Hashing | Binary search, sorting trade-offs, hashing, collision handling, complexity | Hash table + unrelated algorithm challenges |
| 05. Trees, Heaps & Graphs | Recursion, BST, heap, BFS/DFS, traversals, graph representations | Priority scheduling, route/search problems |
| 06. C Systems Foundations | Byte buffers, strings, files, binary I/O, error handling, sockets | File-backed key-value store or small TCP server |

Future sections are **outline only** until requested. Every authored packet should copy Section 01's depth: learning explanations and resource links, experiments, one core problem each session with extensions, no answers, quiz, varied domains, project, transfer assessment, and reflection.

## Track B — Go by building core infrastructure

Each substantial implementation has a clear spec, design record, correctness tests, failure experiments and performance review.

1. **Go language and concurrency fundamentals** — slices, structs, interfaces, errors, goroutines, channels, context, locks, race detection.
2. **HTTP server** — TCP framing, HTTP semantics, routing, concurrency, timeouts, graceful shutdown.
3. **Redis-like cache** — key/value operations, TTL, memory limits, eviction, concurrency, protocol considerations.
4. **Message queue** — producers/consumers, acknowledgments, redelivery, retry policy, dead-letter queue, idempotent consumers.
5. **Persistent database engine** — append-only log, indexes, compaction, crash recovery and durability claims.
6. **Gateway / reverse proxy** — routing, backend health, rate limits, load balancing, failure handling; reuse proven TLS libraries rather than designing crypto.
7. **Integrated mini-system** — connect components, introduce faults, instrument, benchmark, improve measured bottlenecks.

## Embedded engineering learning

Learn **API design, clean architecture, scalability, and distributed systems** within these implementations rather than starting a separate calendar-based course. Ask at every milestone:

- Why this interface and what guarantees does it make?
- Could a simpler architecture satisfy the requirements?
- What are the time, space and operational costs?
- What happens when traffic grows or a dependency partially fails?
- What evidence proves the system works and the improvement matters?
- What should AI implement, and what must I personally understand and review?

## Progression rule

Advance only after: (1) core implementation demonstrates correctness, (2) quiz can be explained closed-notes, (3) a fresh transfer problem can be independently solved, (4) trade-offs can be defended. Elapsed time plays no role.
