# Google Objective-C Style Guide Summary

This document summarizes key rules and best practices from the Google Objective-C Style Guide.

## 1. Principles
- **Reader First:** Optimize code for readers and maintainers, not for brevity while writing.
- **Consistency:** Prefer one consistent style within a codebase over mixing allowed alternatives.
- **Apple SDKs:** Stay consistent with Apple Objective-C conventions unless the project has a stronger local rule.
- **Clarity:** Leave textual hints when behavior is surprising or non-obvious.

## 2. Naming
- **Descriptive Names:** Use names that explain purpose without non-standard abbreviations.
- **Acronyms:** Keep common acronyms and initialisms capitalized within names, such as `URL` or `ID`.
- **Prefixes:** Use project prefixes for classes, protocols, global functions, and global constants when needed to avoid global namespace collisions.
- **File Names:** Name files after the primary class or category. Use `.h`, `.m`, and `.mm` appropriately.
- **Categories:** Include the extended class name in category filenames, such as `NSString+Utils.h`.

## 3. Formatting
- **Indentation:** Use 2 spaces. Do not use tabs.
- **Line Length:** Prefer readable lines and wrap long declarations or calls.
- **Braces:** Use K&R style for method and block bodies.
- **Spacing:** Put spaces around binary operators and after commas.
- **Pointers:** Attach the asterisk to the variable or property name in declarations according to surrounding project style.
- **Literals:** Use Objective-C literals for arrays, dictionaries, numbers, and boxed values when they improve readability.

## 4. Interfaces and Implementations
- **Imports:** Import the related header first in implementation files, then system and project headers.
- **Forward Declarations:** Use `@class` in headers when possible to reduce dependencies.
- **Properties:** Prefer properties for object state that is part of the public or class interface.
- **Attributes:** Specify memory-management and atomicity attributes explicitly, such as `nonatomic`, `copy`, or `strong`.
- **Designated Initializers:** Mark designated initializers and route other initializers through them.
- **Class Extensions:** Use class extensions in `.m` files for private properties and methods.

## 5. Comments and Documentation
- **Header Comments:** Document non-trivial top-level declarations in headers.
- **Adjacency:** Place documentation comments directly next to the declaration they describe.
- **Methods:** Document parameters and return values when they are not obvious from the selector.
- **Implementation Comments:** Explain tricky or surprising implementation details; do not narrate obvious code.
- **TODOs:** Use searchable TODO comments with an owner or identifier.

## 6. Language Practices
- **Nil Checks:** Rely on Objective-C's safe messaging to `nil` only when it is clear and intentional.
- **BOOL:** Use `YES` and `NO` for Boolean values.
- **Collections:** Use generics for Foundation collections when element types are known.
- **Memory:** Avoid manual memory-management patterns in ARC code unless the project requires them.
- **Blocks:** Avoid retain cycles by capturing `self` carefully in blocks.
- **Error Handling:** Follow Cocoa conventions for `NSError` out parameters and return values.

**BE CONSISTENT.** When editing Objective-C, match the existing project style.

*Source: [Google Objective-C Style Guide](https://google.github.io/styleguide/objcguide.html)*
