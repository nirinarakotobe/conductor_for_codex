# Google Markdown Style Guide Summary

This document summarizes key rules and best practices from the Google Markdown Style Guide.

## 1. Documentation Principles
- **Minimum Viable Docs:** Prefer a small, accurate document over a large stale one.
- **Maintainability:** Keep source text readable, portable, and easy to update.
- **Simplicity:** Use standard Markdown syntax before custom HTML or complex formatting.
- **Freshness:** Remove obsolete content in small, safe edits.

## 2. Document Structure
- **Title:** Use one top-level `#` heading, ideally matching the document topic or filename.
- **Introduction:** Start with 1-3 sentences that explain the purpose and audience.
- **Headings:** Use ATX-style headings (`## Topic`) and make heading names unique and complete.
- **Spacing:** Put blank lines around headings, lists, and code blocks for readability.
- **See Also:** Put related links near the end when they are supplemental.

## 3. Text Style
- **Capitalization:** Preserve official capitalization for products, tools, and commands.
- **Line Length:** Prefer wrapping prose to a readable width unless doing so would harm clarity, URLs, tables, or code.
- **Trailing Whitespace:** Do not leave trailing spaces.
- **Emphasis:** Use emphasis sparingly; do not rely on formatting to compensate for unclear wording.

## 4. Lists and Tables
- **Bullets:** Use a consistent bullet marker within a document.
- **Numbered Lists:** Use numbered lists only when order matters.
- **Nested Lists:** Indent nested content consistently and keep spacing readable.
- **Tables:** Use tables for compact structured data only; avoid tables when prose or lists are clearer.

## 5. Code and Commands
- **Inline Code:** Use backticks for filenames, commands, flags, identifiers, and literal values.
- **Fenced Blocks:** Prefer fenced code blocks over indented code blocks.
- **Language Tags:** Add a language identifier to fenced code blocks when practical.
- **Escaping:** Use code spans when characters would otherwise be interpreted as Markdown syntax.

## 6. Links and Images
- **Link Text:** Use descriptive link text; avoid vague labels like "click here".
- **Paths:** Prefer explicit paths for links, especially outside the current directory.
- **Reference Links:** Use reference-style links for long URLs or repeated destinations.
- **Images:** Include useful alt text and keep image references maintainable.

**BE CONSISTENT.** When editing Markdown, match nearby document style.

*Source: [Google Markdown Style Guide](https://google.github.io/styleguide/docguide/style.html)*
