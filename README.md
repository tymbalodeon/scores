# Scores

Library of [LilyPond](https://lilypond.org/) music score files, with a
development environment for editing scores and generating output files.

## Installation

- (On non-NixOS systems:) Install
  [Nix](https://nixos.org/manual/nix/stable/) using the
  [Determinate Systems Nix Installer](<https://github.com/>
  DeterminateSystems/nix-installer).

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

On macOS, install the
[default LilyPond fonts](https://lilypond.org/doc/v2.24/Documentation/notation/fonts#font-families).
This can be done using Nix and
[Home Manager](https://nix-community.github.io/home-manager/) by adding
`gyre-fonts` to `home.packages` as in these [dotfiles](<https://github.com/>
tymbalodeon/.dotfiles), or manually with the following links:

<!-- markdownlint-disable line-length -->

- Roman:
  [TeX Gyre Schola](https://www.gust.org.pl/projects/e-foundry/tex-gyre/schola/qcs2.005otf.zip "TeX Gyre Schola")
- Sans:
  [TeX Gyre Heros](https://www.gust.org.pl/projects/e-foundry/tex-gyre/heros/qhv2.004otf.zip "TeX Gyre Heros")
- Typewriter:
  [Tex Gyre Cursor](https://www.gust.org.pl/projects/e-foundry/tex-gyre/cursor/qcr2.004otf.zip "TeX Gyre Cursor")

<!-- markdownlint-enable line-length -->

## Development

Development commands are provided through
[just](https://just.systems/man/en/). Run `just` to see all available commands
and their descriptions. Run `just <COMMAND> --help` for detailed information
about a particular command.
