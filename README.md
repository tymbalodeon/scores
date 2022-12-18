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

- Remove pdf(s): `clean *scores`
- Create pdf(s): `compile *scores`
- Create new score template, and optionally edit ("--edit"): `create type composer title *edit`
- Open \<score\> in editor and pdf viewer, recompiling on file changes: `edit score`
- List pdf(s): `list *scores`
- Open pdf(s): `open *scores`
