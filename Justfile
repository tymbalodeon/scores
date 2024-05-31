@_help:
    ./scripts/help.nu

# Run pre-commit hooks
@check *hooks:
    ./scripts/check.nu {{ hooks }}

# Remove pdfs
@clean *search_term:
    ./scripts/clean.nu {{ search_term }}

# Compile pdfs
@compile *search_term:
    ./scripts/compile.nu {{ search_term }}

# Create new score
@create *args:
    ./scripts/create.nu {{ args }}

# List dependencies
@deps *args:
    ./scripts/deps.nu {{ args }}

# Open <score> in $EDITOR and pdf viewer, recompiling on file changes
@edit *args:
    ./scripts/edit.nu {{ args }}

# Search available `just` recipes
[no-exit-message]
@find-recipe *search_term:
    ./scripts/find-recipe.nu {{ search_term }}

# Search project history
@history *search_term:
    ./scripts/history.nu {{ search_term }}

# Get info about scores
@info *search_term:
    ./scripts/info.nu {{ search_term }}

# Initialize direnv environment
@init *help:
    ./scripts/init.nu {{ help }}

# View issues
@issue *args:
    ./scripts/issue.nu {{ args }}

# Open pdfs
@open *search_term:
    ./scripts/open-pdf.nu {{ search_term }}

# Update README command output
@_readme *help:
    ./scripts/readme.nu {{ help }}

# View remote repository
@remote *web:
    ./scripts/remote.nu {{ web }}

# View project settings
@settings *args:
    ./scripts/settings.nu {{ args }}

# View repository analytics
@stats *help:
    ./scripts/stats.nu {{ help }}

# View available templates
@templates *args:
    ./scripts/templates.nu {{ args }}

# Update dependencies and score LilyPond version
@update *help:
    ./scripts/update.nu {{ help }}

# View the source code for a recipe
@view-source *recipe:
    ./scripts/view-source.nu {{ recipe }}
