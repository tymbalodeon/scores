# View help text
@help *recipe:
    ./scripts/help.nu {{ recipe }}

# Check flake and run pre-commit hooks
@check *args:
    ./scripts/check.nu {{ args }}

# List dependencies (alias: `deps`)
@dependencies *args:
    ./scripts/dependencies.nu {{ args }}

alias deps := dependencies

# Manage environments
@environment *args:
    ./scripts/environment.nu {{ args }}

alias env := environment

# Search available `just` recipes
[no-cd]
[no-exit-message]
@find-recipe *search_term:
    ./scripts/find-recipe.nu {{ search_term }}

alias find := find-recipe

# View project history
[no-cd]
@history *args:
    ./scripts/history.nu {{ args }}

# View issues
@issue *args:
    ./scripts/issue.nu {{ args }}

# Create a new release
@release *preview:
    ./scripts/release.nu  {{ preview }}

# View remote repository
@remote *web:
    ./scripts/remote.nu  {{ web }}

# View repository analytics
@stats *help:
    ./scripts/stats.nu {{ help }}

# Run tests
@test *args:
    ./scripts/test.nu {{ args }}

# View the source code for a recipe
[no-cd]
@view-source *recipe:
    ./scripts/view-source.nu {{ recipe }}

alias src := view-source

mod lilypond "just/lilypond.just"

# alias for `lilypond clean`
@clean *args:
    just lilypond clean {{ args }}

# alias for `lilypond compile`
@compile *args:
    just lilypond compile {{ args }}

# alias for `lilypond create`
@create *args:
    just lilypond create {{ args }}

# alias for `lilypond edit`
@edit *args:
    just lilypond edit {{ args }}

# alias for `lilypond info`
@info *args:
    just lilypond info {{ args }}

# alias for `lilypond open-pdf`
@open-pdf *args:
    just lilypond open-pdf {{ args }}

# alias for `lilypond settings`
@settings *args:
    just lilypond settings {{ args }}

# alias for `lilypond templates`
@templates *args:
    just lilypond templates {{ args }}

# alias for `lilypond update`
@update *args:
    just lilypond update {{ args }}
