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
`./install_dependencies`

Or, if `just` is already installed: `just install` to install the rest of the
dependencies.

## Tasks

Task scripts are provided to facilitate development. These can be called
directly (using `./scripts/main <COMMAND> <ARGS>`) or using
[`just`](https://just.systems/man/en/ "just"). Available commands:

- `just`: Show available commands
- `just clean *scores`: Remove pdf(s).
- `just commit message`: Commit and push all files.
- `just compile *scores`: Create pdf(s).
- `just create type composer title *edit`: Create new score template, and
  optionally edit ("--edit").
- `just edit score`: Open \<score\> in editor and pdf viewer, recompiling on
  file changes.
- `just install`: Install dependencies.
- `just list *scores`: List pdf(s).
- `just main *message`: Switch back to main branch, optionally committing the
  current branch.
- `just open *scores`: Open pdf(s).
- `just outdated *scores`: List \<scores\> with outdated or non-existent pdfs.
- `just status *scores`: Show status of pdf(s) for \<scores\>.
- `just update *scores`: Update lilypond version in \<scores\>.
