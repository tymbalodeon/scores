# Scores

Library of [LilyPond](https://lilypond.org/) music score files.

## Dependencies

Required for generating pdfs:

- [LilyPond](https://lilypond.org/ "lilypond")

Recommended for development using `justfile` commands, incremental builds, file
watching:

- [just](https://just.systems/man/en/ "just")
- [checkexec](https://github.com/kurtbuilds/checkexec "checkexec")
- [watchexec](https://watchexec.github.io/ "watchexec")
- [skim](https://skim-app.sourceforge.io/ "skim")

Dependencies can be installed by running the included script:
`./install-dependencies`

Or, if `just` is already installed: `just install` to install the rest of the
dependencies.

## Tasks

This project uses [`just`](https://just.systems/man/en/ "just") as a task
runner. Available commands:

- Show available commands: `just`
- Remove pdf(s): `just clean *scores`
- Create pdf(s): `just compile *scores`
- Create new score template, and optionally edit ("--edit"):
  `just create type composer title *edit`
- Open \<score\> in editor and pdf viewer, recompiling on file changes:
  `just edit score`
- Install dependencies: `just install`
- List pdf(s): `just list *scores`
- Open pdf(s): `just open *scores`
- List scores with outdated or non-existent pdfs: `just outdated *scores`
- Update lilypond version: `just update *scores`
