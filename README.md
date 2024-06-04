# Scores

Library of [LilyPond](https://lilypond.org/) music score files, with a
development environment for editing scores and generating output files.

## Installation

### Nix

The recommended way to install the build and development dependencies is with
[Nix](https://nix.dev/). On non-NixOS systems, use the Determinate Systems
[Nix Installer](https://github.com/DeterminateSystems/nix-installer).

Once Nix is installed, use `nix develop` to download the dependencies and
activate the development shell, or, preferably, install
[direnv](https://direnv.net/) (for example, using these
[dotfiles](https://github.com/tymbalodeon/.dotfiles)) to automatically activate
the environment when `cd`-ing into the project directory. Assuming you installed
direnv, as well as [just](https://just.systems/man/en/), and
[nushell](https://www.nushell.sh/) (which will be installed when running `nix
develop`), a automatic development environment can be created by running:

```nushell
just init
```

### Manual

If not using Nix, install the following dependencies via your preferred method.
More information about each dependency can be found by clicking the "Homepage"
link on each page listed below.

<!-- `just deps` start -->

- [fd-10.1.0](https://search.nixos.org/packages?channel=unstable&show=fd)
- [gh-2.49.2](https://search.nixos.org/packages?channel=unstable&show=gh)
- [gyre-fonts-2.005](https://search.nixos.org/packages?channel=unstable&show=gyre-fonts)
- [just-1.26.0](https://search.nixos.org/packages?channel=unstable&show=just)
- [lilypond-2.25.15](https://search.nixos.org/packages?channel=unstable&show=lilypond)
- [lychee-0.15.1](https://search.nixos.org/packages?channel=unstable&show=lychee)
- [nushell-0.93.0](https://search.nixos.org/packages?channel=unstable&show=nushell)
- [pre-commit-3.7.1](https://search.nixos.org/packages?channel=unstable&show=pre-commit)
- [python3.12-pre-commit-hooks-4.6.0](https://search.nixos.org/packages?channel=unstable&show=python3.12-pre-commit-hooks)
- [ripgrep-14.1.0](https://search.nixos.org/packages?channel=unstable&show=ripgrep)
- [tokei-12.1.2](https://search.nixos.org/packages?channel=unstable&show=tokei)
- [watchexec-2.1.1](https://search.nixos.org/packages?channel=unstable&show=watchexec)
- [zathura-with-plugins-0.5.5](https://search.nixos.org/packages?channel=unstable&show=zathura-with-plugins)
- [zellij-0.40.1](https://search.nixos.org/packages?channel=unstable&show=zellij)

<!-- `just deps` end -->

### Recommended extra dependencies

For PDF viewing (macOS only):

- [Skim](https://skim-app.sourceforge.io/ "Skim")

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
    deps *args               # List dependencies
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
<!-- markdownlint-enable MD013 -->
