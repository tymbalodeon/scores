# Scores

Library of [LilyPond](https://lilypond.org/) music score files, with a
development environment for editing scores and generating output files.

## Installation

- (On non-NixOS systems:) Install Nix using the [Determinate Systems Nix Installer](https://github.com/DeterminateSystems/nix-installer).

- Run `nix develop`, or install [direnv](https://direnv.net/) (using these
  [dotfiles](https://github.com/tymbalodeon/.dotfiles), for example), create a
  `.envrc` file containing `use flake`, and run `direnv allow`.

  Using [nu](https://www.nushell.sh/):

  ```nushell
  echo "use flake" | save --force .envrc;
  direnv allow
  ```

### Recommended extra dependencies

For PDF viewing:

- [Skim](https://skim-app.sourceforge.io/ "Skim") (macOS only) or
  [zathura](https://pwmt.org/projects/zathura "zathura")

On macOS, to use the default LilyPond fonts, install:

- Serif: [C059](https://blogfonts.com/c059.font "C059") (New Century Schoolbook)
- Sans: [Nimbus Sans L](https://www.fontsquirrel.com/fonts/nimbus-sans-l "Nimbus Sans L")
- Mono: [Nimbus Mono](https://www.fontsquirrel.com/fonts/nimbus-mono "Nimbus Mono")

## Development

Development commands are provided through
[just](https://just.systems/man/en/). Run `just` to see all available commands
and their descriptions. Run `just <COMMAND> --help` for detailed information
about a particular command.
