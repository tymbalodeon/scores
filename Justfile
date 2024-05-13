set shell := ["nu", "-c"]

@_help:
    nu ./scripts/help.nu

# Display the source code for a recipe
source recipe *args="_":
    #!/usr/bin/env nu
    source {{ justfile_directory() }}/scripts/source.nu
    src {{ recipe }} `{{ args }}`

# Search available `just` commands
[no-exit-message]
find *search_term:
    #!/usr/bin/env nu
    source {{ justfile_directory() }}/scripts/find.nu
    find {{ search_term }}

# Update dependencies
update *args:
    #!/usr/bin/env nu
    source {{ justfile_directory() }}/scripts/update.nu
    update-dependencies {{ args }}

# View project settings
settings:
    #!/usr/bin/env nu
    source {{ justfile_directory() }}/scripts/settings.nu
    settings

# List scores
list *args:
    #!/usr/bin/env nu
    source {{ justfile_directory() }}/scripts/list.nu
    list {{ args }}

# Open <score> in $EDITOR and pdf viewer, recompiling on file changes
edit score:
    #!/usr/bin/env nu
    source {{ justfile_directory() }}/scripts/edit.nu
    edit {{ score }}

# Compile pdf(s)
compile *search_term:
    #!/usr/bin/env nu
    source {{ justfile_directory() }}/scripts/compile.nu
    compile-score {{ search_term }}

# Open pdf(s)
open *search_term:
    #!/usr/bin/env nu
    source {{ justfile_directory() }}/scripts/open.nu
    open-file {{ search_term }}

# Remove pdf(s)
clean *search_term:
    #!/usr/bin/env nu
    source {{ justfile_directory() }}/scripts/clean.nu
    clean {{ search_term }}

# Run pre-commit hooks
check *hooks:
    #!/usr/bin/env nu
    source {{ justfile_directory() }}/scripts/check.nu
    check {{ hooks }}

# View remote repository
remote *browser:
    #!/usr/bin/env nu
    source {{ justfile_directory() }}/scripts/remote.nu
    remote {{ browser }}

# View issues
issue *args:
    #!/usr/bin/env nu
    source {{ justfile_directory() }}/scripts/issue.nu
    issue {{ args }}

# View repository analytics
stats *args:
    #!/usr/bin/env nu
    source {{ justfile_directory() }}/scripts/stats.nu
    stats {{ args }}
