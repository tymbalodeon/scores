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

### Extra dependencies

For PDF viewing:

- [Skim](https://skim-app.sourceforge.io/ "Skim") or
  [zathura](https://pwmt.org/projects/zathura "zathura")

On macOS, to use the default LilyPond serif font, install:

- [C059](https://blogfonts.com/c059.font "C059")

## Development

Run `just` to see available commands.
