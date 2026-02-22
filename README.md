# clox

A high-performance bytecode virtual machine for the Lox programming language, implemented in C. This project follows the implementation described in the second half of [Crafting Interpreters](https://craftinginterpreters.com/) by Robert Nystrom.

## Features

- **Bytecode VM**: Stack-based execution with a custom instruction set.
- **Pratt Parser**: A single-pass compiler that translates source code directly into bytecode.
- **Garbage Collection**: An incremental mark-and-sweep collector.
- **Dynamic Typing**: Support for numbers, Booleans, strings, and `nil`.
- **First-Class Functions**: Support for closures and upvalues.
- **Object-Oriented Programming**: Classes, instances, dynamic fields, methods, and inheritance.
- **Optimized Method Calls**: Direct method invocation and `this` binding.

## Project Structure

- `src/`: C source code and headers.
- `test/`: Lox test scripts split by functional area.
- `obj/`: Compiled object files (generated during build).

## Building the Project

The project includes a `Makefile` for easy compilation. Ensure you have `gcc` (or another C compiler) installed.

```bash
make
```

This will produce the `clox` executable in the root directory.

## Usage

### Running a Script

To execute a Lox source file:

```bash
./clox path/to/script.lox
```

### REPL

To start the interactive Read-Eval-Print Loop:

```bash
./clox
```

## Running the Tests

You can run all tests using the Makefile:

```bash
make test
```

Or run individual tests manually:

```bash
./clox test/arithmetic.lox
./clox test/logic.lox
# ... etc
```

## Source Code Layout (in `src/`)

- `main.c`: Entry point and REPL/file loading logic.
- `vm.c / vm.h`: Core virtual machine execution loop and call stack management.
- `compiler.c / compiler.h`: Pratt parser and bytecode generation.
- `scanner.c / scanner.h`: Tokenization logic.
- `object.c / object.h`: Heap-allocated object representations (strings, functions, classes).
- `table.c / table.h`: Hash table implementation for globals, fields, and string interning.
- `memory.c / memory.h`: Garbage collector and memory management.
- `chunk.c / chunk.h`: Bytecode array management.
- `value.c / value.h`: Lox value representation and tagged unions.
- `debug.c / debug.h`: Disassembler for debugging bytecode.
