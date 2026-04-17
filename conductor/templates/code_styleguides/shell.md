# Google Shell Style Guide Summary

This document summarizes key rules and best practices from the Google Shell Style Guide.

## 1. When to Use Shell
- **Scope:** Use shell for small utilities and simple wrappers around other commands.
- **Complexity:** If a script grows large, handles complex data, or needs non-trivial control flow, use a more structured language.
- **Interpreter:** Executable shell scripts should use Bash unless a constrained environment requires another shell.
- **SUID/SGID:** Do not use SUID or SGID shell scripts. Use safer privilege boundaries such as `sudo` when needed.

## 2. Files and Output
- **File Names:** Executables may use `.sh` or no extension. Libraries should use `.sh` and should not be executable.
- **File Header:** Start each file with a brief description of what it does.
- **STDOUT vs STDERR:** Send normal output to stdout and errors/status diagnostics to stderr.
- **Exit Status:** Return useful non-zero statuses on failures.

## 3. Formatting
- **Indentation:** Use 2 spaces. Do not use tabs, except where required by `<<-` here-documents.
- **Line Length:** Prefer lines no longer than 80 characters.
- **Blank Lines:** Use blank lines between logical blocks to improve readability.
- **Pipelines:** Keep short pipelines on one line. Split long pipelines one command per line with the pipe at the start of continuation lines.
- **Control Flow:** Put `then` and `do` on the same line as `if`, `for`, `while`, or `until`; align closing keywords with the opener.

## 4. Variables and Quoting
- **Quoting:** Quote variable expansions and command substitutions unless there is a specific reason not to.
- **Braces:** Prefer `${var}` for named variables; avoid unnecessary braces around simple special parameters.
- **Command Substitution:** Use `$(command)`, not backticks.
- **Arrays:** Use arrays for lists of arguments to avoid word-splitting bugs.
- **Constants:** Use `readonly` for constants and environment-style names for exported values.

## 5. Tests and Commands
- **Tests:** Prefer `[[ ... ]]` over `[ ... ]` or `test` for conditionals.
- **Return Values:** Check command return values directly; do not ignore failures accidentally.
- **Builtins:** Prefer shell builtins where they are clearer and avoid unnecessary external commands.
- **ShellCheck:** Run ShellCheck on scripts when practical.
- **eval:** Avoid `eval`; it is difficult to use safely.

## 6. Naming and Structure
- **Functions:** Use lowercase names with underscores, and include `::` only for package-style names when the project already uses that pattern.
- **Variables:** Use lowercase with underscores for local variables.
- **Local Scope:** Use `local` inside functions to avoid leaking variables globally.
- **Function Comments:** Document non-obvious functions, including globals, arguments, outputs, and return values.
- **main:** Put executable logic in `main` for scripts long enough to need structure.

**BE CONSISTENT.** When editing shell scripts, match the existing project style.

*Source: [Google Shell Style Guide](https://google.github.io/styleguide/shellguide.html)*
