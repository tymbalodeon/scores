[private]
@default:
    just help --default

# View full help text, or for a specific recipe
@help *args:
    ./scripts/help.nu {{ args }}

# Check flake and run pre-commit hooks
@check *args:
    ./scripts/check.nu {{ args }}

# List dependencies
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
[group("aliases")]
@clean *args:
    just lilypond clean {{ args }}

# alias for `lilypond compile`
[group("aliases")]
@compile *args:
    just lilypond compile {{ args }}

# alias for `lilypond create`
[group("aliases")]
@create *args:
    just lilypond create {{ args }}

# alias for `lilypond edit`
[group("aliases")]
@edit *args:
    just lilypond edit {{ args }}

# alias for `lilypond info`
[group("aliases")]
@info *args:
    just lilypond info {{ args }}

# alias for `lilypond open-pdf`
[group("aliases")]
@open-pdf *args:
    just lilypond open-pdf {{ args }}

# alias for `lilypond settings`
[group("aliases")]
@settings *args:
    just lilypond settings {{ args }}

# alias for `lilypond templates`
[group("aliases")]
@templates *args:
    just lilypond templates {{ args }}

# alias for `lilypond update`
[group("aliases")]
@update *args:
    just lilypond update {{ args }}
