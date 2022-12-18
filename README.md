# Scores

Library of [LilyPond](https://lilypond.org/) music score files.

## Dependencies

Required for generating pdfs:

- [LilyPond](https://lilypond.org/ "lilypond")

Recommended for development using `justfile` commands, incremental builds, file watching:

- [just](https://just.systems/man/en/ "just")
- [checkexec](https://github.com/kurtbuilds/checkexec "checkexec")
- [watchexec](https://watchexec.github.io/ "watchexec")
- [skim](https://skim-app.sourceforge.io/ "skim")

Dependencies can be installed by running the included script: `./install-dependencies`

## Tasks

Available commands (can be shown by running `just`):

- `clean *scores # Remove pdf(s).`
- `compile *scores # Create pdf(s).`
- `create type composer title *edit # Create new score template, and optionally edit ("--edit").`
- `edit score # Open <score> in editor and pdf viewer, recompiling on file changes.`
- `list\*scores # List pdf(s).`
- `open \*scores # Open pdf(s).`
