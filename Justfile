[private]
@_: help

# View full help text, or for a specific recipe
@help *args:
    .environments/default/scripts/help.nu {{ args }}

# Run checks
@check *args:
    .environments/default/scripts/check.nu {{ args }}

# Create and switch to bookmarks/branches
@develop *args:
    .environments/default/scripts/develop.nu {{ args }}

alias dev := develop

# Manage environments
@environment *args:
    .environments/default/scripts/environment.nu {{ args }}

alias env := environment

# Format files
@format *args:
    .environments/default/scripts/format.nu {{ args }}

alias fmt := format

# View project history
@history *args:
    .environments/default/scripts/history.nu {{ args }}

# View issues
@issue *args:
    .environments/default/scripts/issue.nu {{ args }}

# Lint files
@lint *args:
    .environments/default/scripts/lint.nu {{ args }}

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

[private]
@md *args:
    just markdown {{ args }}

[private]
@yml *args:
    just yaml {{ args }}

mod git ".environments/git/Justfile"
mod just ".environments/just/Justfile"
mod lilypond ".environments/lilypond/Justfile"
mod markdown ".environments/markdown/Justfile"
mod nix ".environments/nix/Justfile"
mod yaml ".environments/yaml/Justfile"

alias compile := lilypond::compile
alias edit := lilypond::edit
alias info := lilypond::info
alias leaks := git::leaks
alias new := lilypond::new
alias open := lilypond::open
alias settings := lilypond::settings
alias sh := nix::shell
alias shell := nix::shell
alias templates := lilypond::templates
alias update := lilypond::update
