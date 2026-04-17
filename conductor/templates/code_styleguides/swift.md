# Google Swift Style Guide Summary

This document summarizes key rules and best practices from the Google Swift Style Guide.

## 1. Source File Basics
- **File Extension:** Swift source files use `.swift`.
- **File Names:** Name files after the primary type or purpose. Use `Type+Protocol.swift` for protocol-conformance extensions.
- **Encoding:** Use UTF-8.
- **Whitespace:** Use spaces only; do not use tabs for indentation.
- **Imports:** Keep imports explicit and organized. Avoid unnecessary imports.

## 2. Formatting
- **Column Limit:** Prefer 100 columns, except for imports, generated code, URLs, or other text that cannot be wrapped cleanly.
- **Braces:** Use K&R-style braces for non-empty blocks.
- **Semicolons:** Do not use semicolons to end or separate statements.
- **One Statement Per Line:** Put each statement on its own line except for very small allowed blocks.
- **Line Wrapping:** If a comma-delimited list does not fit on one line, put each element on its own line.
- **Horizontal Alignment:** Do not align tokens into columns; use normal indentation.

## 3. Declarations and Organization
- **Properties:** Declare local variables close to first use. Prefer one `let` or `var` declaration per variable.
- **Extensions:** Group related extension members together. Use extension files when they clarify ownership or conformance.
- **Access Levels:** Omit explicit access levels when the default is clear. Do not place access modifiers on entire extensions.
- **Nesting:** Prefer nesting types to express scoped relationships rather than using naming prefixes.

## 4. Naming
- **API Guidelines:** Follow Swift API Design Guidelines.
- **Identifiers:** Use clear ASCII identifiers unless Unicode has a clear domain-specific meaning.
- **Types and Protocols:** Use UpperCamelCase.
- **Functions, Methods, Properties, and Variables:** Use lowerCamelCase.
- **Global Constants:** Use lowerCamelCase; do not use Hungarian notation or `k` prefixes.
- **Singletons:** Use names like `shared` or `default` only when they clearly describe the value.

## 5. Language Features
- **Constants:** Prefer `let` over `var` when a value is not reassigned.
- **Optionals:** Prefer `Wrapped?` over `Optional<Wrapped>` when possible.
- **Collections:** Prefer `[Element]` and `[Key: Value]` over long generic forms unless required by the compiler.
- **Force Operations:** Avoid force unwraps and force casts unless the invariant is obvious and documented by context.
- **Warnings:** Keep code warning-free when feasible.
- **Operators:** Avoid defining custom operators unless they are broadly justified and unsurprising.

## 6. Documentation and Comments
- **Documentation Comments:** Use `///` for public or open declarations and members.
- **Summary:** Start documentation with a concise single-sentence summary.
- **Parameters and Returns:** Use Swift documentation markup for parameters, returns, and thrown errors.
- **Implementation Comments:** Use `//` for non-documentation comments; avoid block comments for ordinary explanation.
- **Examples:** Use fenced code blocks in longer documentation comments when examples improve clarity.

**BE CONSISTENT.** When editing Swift, match the existing project style.

*Source: [Google Swift Style Guide](https://google.github.io/swift/)*
