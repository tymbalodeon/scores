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
  current branch.
- `just open *scores`: Open pdf(s).
- `just outdated *scores`: List \<scores\> with outdated or non-existent pdfs.
- `just status *scores`: Show status of pdf(s) for \<scores\>.
- `just templates`: List template types.
- `just update *scores`: Update lilypond version in \<scores\>.

## Templates

Templates are provided for common types of scores. To create a score from a
template, call `just create` (or `./scripts/main create`) with a `type` value
containing the name of the template type plus any options, separated spaces.

For example:

- To create a lead sheet with lyrics: `just create "lead lyrics" <composer> <title>`
- To create a chart without lyrics: `just create chart <composer> <title>`

### Types

- `chart`: single score that produces two output files, one for `lead` and one
  for `form`
- `lead`: (as in "lead sheet") melody with chords, optionally with `lyrics`
- `form`: measures (usually chord rhythms) with chords, broken into sections
- `piano`: solo piano
