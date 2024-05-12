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
find *regex:
    #!/usr/bin/env nu

    source {{ justfile_directory() }}/scripts/find.nu
    find {{ regex }}

# Update dependencies
@update:
    nix flake update

# View project settings
settings:
    #!/usr/bin/env nu

    source {{ justfile_directory() }}/scripts/settings.nu
    settings

# List scores
list:
    #!/usr/bin/env nu

    source {{ justfile_directory() }}/scripts/list.nu
    list

# Open <score> in $EDITOR and pdf viewer, recompiling on file changes
edit score:
    #!/usr/bin/env nu

    source {{ justfile_directory() }}/scripts/edit.nu
    edit {{ score }}

# Compile pdf(s)
compile *search_term:
    #!/usr/bin/env nu

    source {{ justfile_directory() }}/scripts/compile.nu
    compile {{ search_term }}

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
@remote *browser:
    gh repo view {{ if browser == "--browser" { "--web" } else { "" } }}

# View issues
@issue:
    gh issue list

# View repository analytics
@stats:
    tokei --hidden --sort lines

# TODO
# @lilypond-version:
#     lilypond --version | lines | first | split row " " | get 2
