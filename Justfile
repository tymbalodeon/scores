set shell := ["nu", "-c"]

@_help:
    nu ./scripts/help.nu

# Run pre-commit hooks
check *hooks:
    #!/usr/bin/env nu
    use {{ justfile_directory() }}/scripts/check.nu
    check {{ hooks }}

# Remove pdfs
clean *search_term:
    #!/usr/bin/env nu
    use {{ justfile_directory() }}/scripts/clean.nu
    clean {{ search_term }}

# Compile pdfs
compile *search_term:
    #!/usr/bin/env nu
    use {{ justfile_directory() }}/scripts/compile.nu
    compile {{ search_term }}

# Create new score
create *args:
    #!/usr/bin/env nu
    use {{ justfile_directory() }}/scripts/create.nu
    create {{ args }}

# Open <score> (or --info file) in $EDITOR and pdf viewer, recompiling on file changes
edit *args:
    #!/usr/bin/env nu
    use {{ justfile_directory() }}/scripts/edit.nu
    edit {{ args }}

# Search available `just` recipes
[no-exit-message]
find-recipe *search_term:
    #!/usr/bin/env nu
    use {{ justfile_directory() }}/scripts/find-recipe.nu
    find-recipe {{ search_term }}

# Search project history
history *search_term:
    #!/usr/bin/env nu
    use {{ justfile_directory() }}/scripts/history.nu
    history {{ search_term }}

# Get info about scores
info *search_term:
    #!/usr/bin/env nu
    use {{ justfile_directory() }}/scripts/info.nu
    info {{ search_term }}

# Initialize direnv environment
init *help:
    #!/usr/bin/env nu
    use {{ justfile_directory() }}/scripts/init.nu
    init {{ help }}

# View issues
issue *args:
    #!/usr/bin/env nu
    use {{ justfile_directory() }}/scripts/issue.nu
    issue {{ args }}

# Open pdfs
open *search_term:
    #!/usr/bin/env nu
    use {{ justfile_directory() }}/scripts/open-pdf.nu
    open-pdf {{ search_term }}

# View remote repository
remote *browser:
    #!/usr/bin/env nu
    use {{ justfile_directory() }}/scripts/remote.nu
    remote {{ browser }}

# View repository analytics
stats *help:
    #!/usr/bin/env nu
    use {{ justfile_directory() }}/scripts/stats.nu
    stats {{ help }}

# Update dependencies and score LilyPond version
update *help:
    #!/usr/bin/env nu
    use {{ justfile_directory() }}/scripts/update.nu
    update {{ help }}

# View the source code for a recipe
view-source recipe:
    #!/usr/bin/env nu
    use {{ justfile_directory() }}/scripts/view-source.nu
    view-source {{ recipe }}

# View project settings
settings *args:
    #!/usr/bin/env nu
    use {{ justfile_directory() }}/scripts/settings.nu
    settings {{ args }}

# View available templates
templates *args:
    #!/usr/bin/env nu
    use {{ justfile_directory() }}/scripts/templates.nu
    templates {{ args }}
