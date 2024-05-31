# Scores

Library of [LilyPond](https://lilypond.org/) music score files, with a
development environment for editing scores and generating output files.

## Installation

The recommended way to install the build and development dependencies is with
[Nix](https://nix.dev/). On non-NixOS systems, use the Determinate Systems
[Nix Installer](https://github.com/DeterminateSystems/nix-installer).

Once Nix is installed, use `nix develop` to download the dependencies and
activate the development shell, or, preferably, install
[direnv](https://direnv.net/) (for example, using these
[dotfiles](https://github.com/tymbalodeon/.dotfiles)) to automatically activate
the environment whend `cd`-ing into the project directory. Assuming you
installed direnv, as well as [just](https://just.systems/man/en/), and
[nushell](https://www.nushell.sh/) (which will be installed when running `nix
develop`), a development environment can be created by running:

```nushell
just init
```

### Recommended extra dependencies

For PDF viewing:

- [Skim](https://skim-app.sourceforge.io/ "Skim") (macOS only)

## Development

Development commands are provided through [just](https://just.systems/man/en/).
Run `just` to see available "recipes," and `just <recipe> --help/-h` to get more
information about a particular recipe.

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
