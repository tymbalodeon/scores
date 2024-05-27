# Scores

Library of [LilyPond](https://lilypond.org/) music score files, with a
development environment for editing scores and generating output files.

## Installation

- (On non-NixOS systems:) Install [Nix](https://nix.dev/) using the
  [Determinate Systems Nix Installer](<https://github.com/> DeterminateSystems/
  nix-installer).

- Run `nix develop`, or, preferably, install [direnv](https://direnv.net/)
  (using these [dotfiles](https://github.com/tymbalodeon/.dotfiles), for
  example), create a `.envrc` file containing `use flake`, and run `direnv
allow`.

  Using [nu](https://www.nushell.sh/):

  ```nushell
  echo "use flake" | save --force .envrc;
  direnv allow
  ```

### Recommended extra dependencies

For PDF viewing:

- [Skim](https://skim-app.sourceforge.io/ "Skim") (macOS only) or
  [zathura](https://pwmt.org/projects/zathura "zathura")

## Development

Development commands are provided through
[just](https://just.systems/man/en/). Run `just` to see all available commands
and their descriptions. Run `just <COMMAND> --help` for detailed information
about a particular command.
