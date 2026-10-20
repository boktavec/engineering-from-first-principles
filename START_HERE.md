# Start here

This repository is organized into self-paced sections and ordered sessions. Complete a session when you can explain and apply its ideas; there is no weekly deadline.

1. Read the [learning method](docs/LEARNING_METHOD.md).
2. Open [Section 01](sections/01-c-foundations/README.md) and start with its first session.
3. Write your own code in the [exercise area](sections/01-c-foundations/exercises/README.md), and keep your observations in [notes](sections/01-c-foundations/notes/README.md).
4. Use the [progress tracker](docs/PROGRESS.md) to record evidence as you go. Review the [mastery checklist](sections/01-c-foundations/MASTERY.md) before moving to another section.

## C toolchain

Run `make check-toolchain` to confirm Clang is available. Once you have written a C file, a warning-enabled debug build can start with:

```sh
clang -std=c17 -Wall -Wextra -Wpedantic -g -O0 your_file.c -o your_program
```

Use AddressSanitizer and UndefinedBehaviorSanitizer when the installed toolchain supports them. The [Section 01 resources](sections/01-c-foundations/RESOURCES.md) include tool references.

[Back to the repository overview](README.md)
