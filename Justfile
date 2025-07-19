[private]
@default:
    just help

# View full help text, or for a specific recipe
@help *args:
    .environments/default/scripts/help.nu {{ args }}

# Check flake and run pre-commit hooks
@check *args:
    .environments/default/scripts/check.nu {{ args }}

# Manage environments
@environment *args:
    .environments/default/scripts/environment.nu {{ args }}

alias env := environment

# View project history
@history *args:
    .environments/default/scripts/history.nu {{ args }}

# View issues
@issue *args:
    .environments/default/scripts/issue.nu {{ args }}

# View README file
@readme *args:
    .environments/default/scripts/readme.nu  {{ args }}

# View or open recipes
@recipe *args:
    .environments/default/scripts/recipe.nu  {{ args }}

# View remote repository
@remote *args:
    .environments/default/scripts/remote.nu  {{ args }}

# Find/replace
@replace *args:
    .environments/default/scripts/replace.nu  {{ args }}

# View repository analytics
@stats *args:
    .environments/default/scripts/stats.nu {{ args }}

# List TODO-style comments
@todo *args:
    .environments/default/scripts/todo.nu {{ args }}

alias todos := todo

# Set helix theme
@theme *args:
    .environments/default/scripts/theme.nu {{ args }}

[private]
@ly *args:
    just lilypond {{ args }}

mod lilypond ".environments/lilypond/Justfile"
mod nix ".environments/nix/Justfile"

alias clean := lilypond::clean
alias compile := lilypond::compile
alias edit := lilypond::edit
alias info := lilypond::info
alias new := lilypond::new
alias open-pdf := lilypond::open-pdf
alias settings := lilypond::settings
alias shell := nix::shell
alias templates := lilypond::templates
alias update := lilypond::update
