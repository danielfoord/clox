# Lox Syntax Highlighting

Provides basic syntax highlighting for the Lox programming language in VS Code.

## Installation

Since this is a local extension, you can install it by copying the folder to your VS Code extensions directory:

### macOS/Linux
```bash
cp -r . ~/.vscode/extensions/lox-syntax
```

### Windows
```powershell
xcopy /e . %USERPROFILE%\.vscode\extensions\lox-syntax
```

After copying, restart VS Code or run the **"Developer: Reload Window"** command.

## Features

- Highlighting for keywords (`if`, `var`, `fun`, `class`, etc.)
- String literals with escape character support.
- Comments (`//`).
- Numeric constants.
- Function name highlighting.
