# Changelog

All notable changes to this extension are documented here. The format is based
on [Keep a Changelog](https://keepachangelog.com/), and this project adheres to
[Semantic Versioning](https://semver.org/).

## [1.1.0] - 2026-07-12

### Added
- Highlighting for LogScale **metadata fields** (`@timestamp`, `@rawstring`,
  `@ingesttimestamp`, ...), **query/dashboard parameters** (`?name`), and
  **relative-time literals** (`24h`, `7d`, `30m`, `1w`, ...).
- **Field names inside list brackets** — `groupBy([...])`, `table([...])`,
  `select([...])` — are now highlighted as fields.
- **Named function parameters** (`function=`, `order=`, `limit=`, `span=`,
  `as=`, ...) are now scoped distinctly from event fields.
- Nine new snippets: `select`, `timechart`, `bucket`, `in`, `head`, `tail`,
  `rename`, `format`, `worldmap`.
- `onEnterRules` for block-comment (`/* */`) continuation.
- **Grammar tokenization tests** (`vscode-tmgrammar-test`) with scope
  assertions, run in CI on every push and pull request and locally via
  `npm test`. The harness runs through `npx` — no runtime or install
  dependencies are added to the extension.

### Fixed
- Field filters now also match dotted paths with array indexes
  (e.g. `a.b.c[0]=`) and the `=~`, `<=`, and `>=` operators.

### Removed
- Internal `local/` notes and a stray `.vsix` are no longer packaged into the
  published extension.

## [1.0.6] - 2026-05-29

### Added
- Animated demo (GIF) of snippet expansion in the README / Marketplace listing.

## [1.0.5] - 2026-05-29

### Added
- `entra-signins` (alias `signins`) snippet: a full Entra ID interactive
  sign-in hunt with tab-stops for the description, repository, and user email.

## [1.0.4] - 2026-05-29

### Added
- Screenshot of live syntax highlighting in the README / Marketplace listing.

## [1.0.3] - 2026-05-29

### Fixed
- Logical operators (`and`/`or`/`not`/`like`) and the pipe (`|`) are now scoped
  under `keyword.control`, so they are colored by all standard themes. They were
  previously scoped under `keyword.operator`, which many themes leave uncolored.

## [1.0.2] - 2026-05-29

### Fixed
- Logical operators (`and`, `or`, `not`, `like`) and constants (`true`,
  `false`, `null`) are now highlighted case-insensitively, matching real-world
  CQL usage. Previously only uppercase forms were recognized.

## [1.0.1] - 2026-05-29

### Changed
- Clarified the Marketplace description to state this is a Visual Studio Code
  extension.
- README header image now uses an absolute URL so it renders correctly on the
  Marketplace listing.

## [1.0.0] - 2026-05-29

### Added
- Syntax highlighting for CrowdStrike Query Language (CQL/LQL) used in Falcon
  LogScale and Humio.
- Highlighting for comments, strings, regex literals, tag fields, function
  calls, control constructs (`case`, `match`, `default`), logical operators,
  assignment and comparison operators, the pipe operator, numbers, and language
  constants.
- 12 code snippets covering common query patterns (tag filters, `groupBy`,
  `case`, regex filters, `formatTime`, and a full hunt-query skeleton).
- Language configuration: comment toggling, bracket matching, auto-closing
  pairs, region folding, and block indentation.
- File associations for `.cql`, `.lql`, and `.humio`.

### Security
- Zero runtime code: declarative grammar and snippets only, no `activate()`
  entry point, no dependencies, no network access.
