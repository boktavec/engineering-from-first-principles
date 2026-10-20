.PHONY: help check-toolchain

help:
	@printf 'Commands:\n  make check-toolchain  Confirm clang is available\n'
	@printf 'Build your OWN exercise: clang -std=c17 -Wall -Wextra -Wpedantic -g -O0 file.c -o file\n'

check-toolchain:
	@command -v clang >/dev/null || (echo 'clang not found. On macOS install Xcode Command Line Tools.'; exit 1)
	@clang --version | head -n 1
	@printf 'Toolchain present. See START_HERE.md for sanitizer-aware build options.\n'
