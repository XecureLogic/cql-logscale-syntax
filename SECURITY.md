# Security Policy

## Supply-chain posture

This extension is intentionally built to minimize supply-chain risk, because it
is aimed at security teams who treat every editor extension as attack surface.

- **No executable code.** There is no `activate()` entry point and no
  JavaScript/TypeScript runtime. The extension is a TextMate grammar, a language
  configuration, and snippets — all declarative JSON.
- **No dependencies.** Nothing is pulled from npm at install time or runtime.
  The only npm package touched anywhere is `@vscode/vsce`, used in CI to
  package the extension, and it ships no code into the published artifact.
- **No network access.** The extension cannot phone home, read secrets, or
  exfiltrate data. It has no capability to do so.

The entire package is a handful of small JSON files. You can read every byte in
a few minutes — that is the point. Clone the repository, inspect it, build it
yourself with `npx @vscode/vsce package`, and compare against the published
`.vsix`.

## Supported versions

The latest published version on the Visual Studio Marketplace is the only
supported version. Older versions do not receive fixes.

## Reporting a vulnerability

If you believe you have found a security issue — for example, a grammar pattern
that could cause pathological editor behavior, or any discrepancy between this
source and the published artifact — please report it privately:

- Open a [GitHub security advisory](https://github.com/XecureLogic/cql-logscale-syntax/security/advisories/new), or
- Email **info@xecurelogic.com** with the details and steps to reproduce.

Please do not open a public issue for a suspected vulnerability until it has been
triaged. We aim to acknowledge reports within a few business days.
