[private]
@default:
    just help

# View full help text, or for a specific recipe
@help *args:
    .environments/scripts/help.nu {{ args }}

# Check flake and run pre-commit hooks
@check *args:
    .environments/scripts/check.nu {{ args }}

# Manage environments
@environment *args:
    .environments/scripts/environment.nu {{ args }}

alias env := environment

# Search available `just` recipes
[no-exit-message]
@find-recipe *args:
    .environments/scripts/find-recipe.nu {{ args }}

alias find := find-recipe

# View project history
@history *args:
    .environments/scripts/history.nu {{ args }}

# View issues
@issue *args:
    .environments/scripts/issue.nu {{ args }}

# View remote repository
@remote *args:
    .environments/scripts/remote.nu  {{ args }}

# Find/replace
@replace *args:
    .environments/scripts/replace.nu  {{ args }}

# View repository analytics
@stats *args:
    .environments/scripts/stats.nu {{ args }}

# List TODO-style comments
@todo *args:
    .environments/scripts/todo.nu {{ args }}

alias todos := todo

# Set helix theme
@theme *args:
    .environments/scripts/theme.nu {{ args }}

# View the source code for a recipe
@view-source *args:
    .environments/scripts/view-source.nu {{ args }}

alias src := view-source

[private]
@ly *args:
    just lilypond {{ args }}

mod lilypond ".environments/just/lilypond.just"

alias clean := lilypond::clean
alias compile := lilypond::compile
alias edit := lilypond::edit
alias info := lilypond::info
alias new := lilypond::new
alias open-pdf := lilypond::open-pdf
alias settings := lilypond::settings
alias templates := lilypond::templates
alias update := lilypond::update
