# Google Swift Style Guide Summary

This document summarizes key rules and best practices from the Google Swift Style Guide, with additional SwiftUI and macOS guidance for building clear, modern Swift code.

## 1. Source File Basics
- **File Extension:** Swift source files use `.swift`.
- **File Names:** Name files after the primary type or purpose. Use `Type+Protocol.swift` for protocol-conformance extensions.
- **Encoding:** Use UTF-8.
- **Whitespace:** Use spaces only; do not use tabs for indentation.
- **Imports:** Keep imports explicit and organized. Avoid unnecessary imports.
- **One Primary Type:** Prefer one primary type per file. Small helper types may live nearby when tightly coupled.

## 2. Formatting
- **Column Limit:** Prefer 100 columns, except for imports, generated code, URLs, or other text that cannot be wrapped cleanly.
- **Braces:** Use K&R-style braces for non-empty blocks.
- **Semicolons:** Do not use semicolons to end or separate statements.
- **One Statement Per Line:** Put each statement on its own line except for very small allowed blocks.
- **Line Wrapping:** If a comma-delimited list does not fit on one line, put each element on its own line.
- **Horizontal Alignment:** Do not align tokens into columns; use normal indentation.

## 3. Architecture and Organization
- **SwiftUI Default:** Prefer SwiftUI for UI. Use AppKit bridging only when SwiftUI does not provide the required behavior.
- **Feature-First Layout:** Organize files by feature, keeping views, models, and supporting logic together.
- **Native Data Flow:** Use Swift and SwiftUI's intended ownership and data-flow patterns instead of fighting the framework.
- **Extensions:** Group related extension members together. Use extension files when they clarify ownership or conformance.
- **Nesting:** Prefer nesting types to express scoped relationships rather than adding naming prefixes.

## 4. Naming
- **API Guidelines:** Follow Swift API Design Guidelines.
- **Identifiers:** Use clear ASCII identifiers unless Unicode has a clear domain-specific meaning.
- **Types and Protocols:** Use UpperCamelCase.
- **Functions, Methods, Properties, and Variables:** Use lowerCamelCase.
- **Booleans:** Name Boolean values as assertions, such as `isLoading`, `hasUnsavedChanges`, or `canCommit`.
- **Capability Protocols:** Use suffixes such as `-able`, `-ible`, or `-ing` when they clearly describe capability.
- **Global Constants:** Use lowerCamelCase; do not use Hungarian notation or `k` prefixes.
- **Singletons:** Use names like `shared` or `default` only when they clearly describe the value.

## 5. SwiftUI State Management
- **@State:** Use for local, ephemeral view state only.
- **@Binding:** Use when a child view must modify parent-owned state.
- **@Observable:** Use for shared state and models on supported platform versions.
- **@Bindable:** Use for injected observable models that need bindings.
- **@Environment:** Use for dependency injection of global concerns.
- **Ownership:** Views own local state. Extract shared state only when multiple views or services need it.

## 6. Language Features and Concurrency
- **Constants:** Prefer `let` over `var` when a value is not reassigned.
- **Optionals:** Prefer `Wrapped?` over `Optional<Wrapped>` when possible.
- **Collections:** Prefer `[Element]` and `[Key: Value]` over long generic forms unless required by the compiler.
- **Force Operations:** Avoid force unwraps and force casts except in tests or when the invariant is obvious and documented.
- **Async Work:** Prefer `async`/`await` and `async throws` for asynchronous operations.
- **Lifecycle Tasks:** Use SwiftUI's `.task` modifier for lifecycle-aware async work with automatic cancellation.
- **Actors:** Use actors and `@Sendable` where they improve data-race safety.
- **Combine:** Avoid Combine for new code unless integration with existing APIs requires it; prefer Swift Concurrency.
- **Operators:** Avoid defining custom operators unless they are broadly justified and unsurprising.

## 7. Error Handling
- **Domain Errors:** Define domain-specific error enums for meaningful failures.
- **LocalizedError:** Use `LocalizedError` when errors are presented to users.
- **Error Boundaries:** Catch errors at presentation or orchestration boundaries. Let lower-level code throw.
- **No Silent Failures:** Avoid `try?` unless ignoring failure is intentional and documented by context.
- **Actionable Messages:** User-facing errors should explain what failed and what the user can do next.

## 8. SwiftUI Views and macOS UI
- **Subview Extraction:** Split complex views into small, focused subviews with clear inputs.
- **Stable Identity:** Use stable IDs for `ForEach`; avoid `.indices` for dynamic collections.
- **Lazy Containers:** Prefer `LazyVStack` and `LazyHStack` for large collections.
- **Semantic Colors:** Prefer semantic system colors (`.primary`, `.secondary`, `.accentColor`) over hard-coded colors.
- **Appearance:** Verify UI in light, dark, and automatic appearance modes.
- **SF Symbols:** Prefer SF Symbols for icons and choose rendering modes intentionally.
- **Materials:** Use SwiftUI materials for sidebar and overlay vibrancy when appropriate.

## 9. Documentation and Comments
- **Documentation Comments:** Use `///` for public or open declarations and members.
- **Summary:** Start documentation with a concise single-sentence summary.
- **Parameters and Returns:** Use Swift documentation markup for parameters, returns, and thrown errors.
- **Implementation Comments:** Use `//` for non-documentation comments; avoid block comments for ordinary explanation.
- **Why Over What:** Explain non-obvious decisions, invariants, or framework workarounds.
- **Examples:** Use fenced code blocks in longer documentation comments when examples improve clarity.

## 10. Testing and Verification
- **TDD Loop:** Write failing tests first when practical, implement the minimum fix, then refactor.
- **Coverage:** Cover happy paths, edge cases, and error paths.
- **Async Tests:** Test async code with Swift's async testing support instead of blocking sleeps.
- **UI State:** Test state transitions in view models or observable models where possible.
- **Warnings:** Keep code warning-free when feasible.

**BE CONSISTENT.** When editing Swift, match the existing project style.

*Sources: [Google Swift Style Guide](https://google.github.io/swift/), [Swift API Design Guidelines](https://www.swift.org/documentation/api-design-guidelines/)*
