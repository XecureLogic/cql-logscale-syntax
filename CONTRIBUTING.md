# Contributing

Thanks for your interest. This extension is deliberately small and declarative —
no build step, no runtime code — so contributions are easy to review.

## Project layout

- `syntaxes/cql.tmLanguage.json` — the TextMate grammar (the highlighting rules)
- `language-configuration.json` — comments, brackets, folding, indentation
- `snippets/cql.json` — code snippets
- `package.json` — the extension manifest
- `sample.cql` — a sample query for eyeballing highlighting changes
- `test/grammar.cql` — scope-assertion tests for the grammar

## Making a change

1. Edit the relevant JSON file.
2. Validate it parses:
   ```sh
   node -e "JSON.parse(require('fs').readFileSync('syntaxes/cql.tmLanguage.json','utf8'))"
   ```
3. Run the grammar tests (via `npx`, no dependencies to install):
   ```sh
   npm test
   ```
4. Try it locally: open this folder in VS Code and press `F5` to launch an
   Extension Development Host, then open `sample.cql` to see your changes.
5. Package it to confirm it builds cleanly:
   ```sh
   npx @vscode/vsce package
   ```

CI runs the same JSON validation, grammar tests, and packaging step on every
pull request.

## Grammar guidelines

- Rule **order matters** — patterns are tried top to bottom and first match
  wins. New rules usually belong near related ones in `repository`, and are
  referenced from the top-level `patterns` array in the right position.
- Keep scope names conventional (`keyword.control.*`, `string.regexp.*`, etc.)
  so they pick up coloring from standard themes.
- Add a representative line to `sample.cql` for any new construct you highlight,
  and a scope assertion to `test/grammar.cql` so the behavior is pinned.

## Reporting bugs

Open an issue with a minimal `.cql` snippet that reproduces the problem and a
note on what you expected to be highlighted versus what happened.
