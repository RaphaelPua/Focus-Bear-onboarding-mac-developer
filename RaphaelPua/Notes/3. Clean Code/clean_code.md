# Research Summary

## 1. Simplicity
- Principle: Keep code as simple as possible.
- Simple code solves the problem without unnecessary abstractions, clever tricks, or complexity. A developer should be able to follow the logic without understanding unrelated parts of the system.

Why it matters:
- Easier to understand and debug.
- Reduces unnecessary complexity.
- Makes future changes safer.
- Avoids premature over-engineering.

## 2. Readability
- Principle: Code should be easy for a developer to understand.
- Code is written for computers to execute, but it is read by humans much more often. Meaningful variable and function names, sensible structure, clear formatting, and focused functions make the purpose of code easier to understand.

Why it matters:
- Reduces the time needed to understand unfamiliar code.
- Makes code reviews easier.
- Makes debugging easier.
- Helps new developers contribute faster.

## 3. Maintainability
- Principle: Future developers should be able to modify the code safely and easily.
- Code should be structured so that adding a feature, fixing a bug, or changing behaviour does not require understanding a huge amount of unrelated code.

Useful practices include:
- Keeping functions focused on one responsibility.
- Avoiding unnecessary coupling.
- Reusing appropriate existing functionality.
- Writing tests for important behaviour.
- Refactoring when complexity begins to build up.

## 4. Consistency
- Principle: Follow the project's style guides, naming conventions, and established patterns.
- Consistent code makes an unfamiliar codebase predictable. 

Consistency includes:
- Naming conventions.
- Formatting and indentation.
- File and folder structure.
- Error-handling patterns.
- Framework and library conventions.
- Existing project architecture.

## 5. Efficiency

- Principle: Write code that performs well, but avoid premature optimisation.
- Efficient code uses appropriate algorithms, data structures, resources, and I/O operations. However, optimising before there is evidence that performance is a problem can make code unnecessarily complicated.

A good approach is:
- Write a simple and correct implementation.
- Measure performance where it matters.
- Identify actual bottlenecks.
- Optimise the bottleneck.
- Measure again to confirm the improvement.
