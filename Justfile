@_help:
    ./scripts/help.nu

# Run pre-commit hooks
@check *hooks:
    {{ justfile_directory() }}/scripts/check.nu {{ hooks }}

# Remove pdfs
@clean *search_term:
    {{ justfile_directory() }}/scripts/clean.nu {{ search_term }}

# Compile pdfs
@compile *search_term:
    {{ justfile_directory() }}/scripts/compile.nu {{ search_term }}

# Create new score
@create *args:
    {{ justfile_directory() }}/scripts/create.nu {{ args }}

# Open <score> in $EDITOR and pdf viewer, recompiling on file changes
@edit *args:
    {{ justfile_directory() }}/scripts/edit.nu {{ args }}

# Search available `just` recipes
[no-exit-message]
@find-recipe *search_term:
    {{ justfile_directory() }}/scripts/find-recipe.nu {{ search_term }}

# Search project history
@history *search_term:
    {{ justfile_directory() }}/scripts/history.nu {{ search_term }}

# Get info about scores
@info *search_term:
    {{ justfile_directory() }}/scripts/info.nu {{ search_term }}

# Initialize direnv environment
@init *help:
    {{ justfile_directory() }}/scripts/init.nu {{ help }}

# View issues
@issue *args:
    {{ justfile_directory() }}/scripts/issue.nu {{ args }}

# Open pdfs
@open *search_term:
    {{ justfile_directory() }}/scripts/open-pdf.nu {{ search_term }}

# Update README command output
@_readme *help:
    ./scripts/readme.nu {{ help }}

# View remote repository
@remote *web:
    {{ justfile_directory() }}/scripts/remote.nu {{ web }}

# View project settings
@settings *args:
    {{ justfile_directory() }}/scripts/settings.nu {{ args }}

# View repository analytics
@stats *help:
    {{ justfile_directory() }}/scripts/stats.nu {{ help }}

# View available templates
@templates *args:
    {{ justfile_directory() }}/scripts/templates.nu {{ args }}

# Update dependencies and score LilyPond version
@update *help:
    {{ justfile_directory() }}/scripts/update.nu {{ help }}

# View the source code for a recipe
@view-source *recipe:
    {{ justfile_directory() }}/scripts/view-source.nu {{ recipe }}
