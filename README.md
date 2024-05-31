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

<!-- markdownlint-disable MD013 -->
<!-- `just` start -->
```nushell
Available recipes:
(run `just <recipe> --help/-h` for more info)
    check *hooks             # Run pre-commit hooks
    clean *search_term       # Remove pdfs
    compile *search_term     # Compile pdfs
    create *args             # Create new score
    edit *args               # Open <score> in  and pdf viewer, recompiling on file changes
    find-recipe *search_term # Search available `just` recipes
    history *search_term     # Search project history
    info *search_term        # Get info about scores
    init *help               # Initialize direnv environment
    issue *args              # View issues
    open *search_term        # Open pdfs
    remote *web              # View remote repository
    settings *args           # View project settings
    stats *help              # View repository analytics
    templates *args          # View available templates
    update *help             # Update dependencies and score LilyPond version
    view-source *recipe      # View the source code for a recipe
```
<!-- `just` end -->
