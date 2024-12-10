# View help text
@help *recipe:
    ./scripts/help.nu {{ recipe }}

# Check flake and run pre-commit hooks
@check *args:
    ./scripts/check.nu {{ args }}

alias deps := dependencies

# List dependencies (alias: `deps`)
@dependencies *args:
    ./scripts/dependencies.nu {{ args }}

# Manage environments
@environment *args:
    ./scripts/environment.nu {{ args }}

# Search available `just` recipes
[no-cd]
[no-exit-message]
@find-recipe *search_term:
    ./scripts/find-recipe.nu {{ search_term }}

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

mod lilypond "just/lilypond.just"

# Alias for `lilypond clean`
@clean *args:
    just lilypond clean {{ args }}

# Alias for `lilypond compile`
@compile *args:
    just lilypond compile {{ args }}

# Alias for `lilypond create`
@create *args:
    just lilypond create {{ args }}

# Alias for `lilypond edit`
@edit *args:
    just lilypond edit {{ args }}

# Alias for `lilypond info`
@info *args:
    just lilypond info {{ args }}

# Alias for `lilypond open-pdf`
@open-pdf *args:
    just lilypond open-pdf {{ args }}

# Alias for `lilypond settings`
@settings *args:
    just lilypond settings {{ args }}

# Alias for `lilypond templates`
@templates *args:
    just lilypond templates {{ args }}

# Alias for `lilypond update`
@update *args:
    just lilypond update {{ args }}
