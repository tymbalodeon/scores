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

# Remove pdf(s)
@clean:
    nu ./scripts/clean.nu

# Open <score> in $EDITOR and pdf viewer, recompiling on file changes
edit score:
    #!/usr/bin/env nu

    source {{ justfile_directory() }}/scripts/edit.nu
    edit {{ score }}

# List scores
@list:
    nu ./scripts/list.nu

# TODO
# @lilypond-version:
#     lilypond --version | lines | first | split row " " | get 2
