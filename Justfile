set shell := ["nu", "-c"]

@_help:
    nu ./scripts/help.nu

# Display the source code for a recipe
source recipe *args="_":
    #!/usr/bin/env nu

    source {{justfile_directory()}}/scripts/source.nu
    src {{ recipe }} `{{ args }}`

# Search available `just` commands
[no-exit-message]
find *regex:
    #!/usr/bin/env nu

    source {{justfile_directory()}}/scripts/find.nu
    find {{ regex }}

# Remove pdf(s)
clean:
    #!/usr/bin/env nu

    do --ignore-errors {
        ls **/*.pdf | each {|file| rm $file.name} out> /dev/null
    }

# Open <score> in $EDITOR and pdf viewer, recompiling on file changes
edit:
    #!/usr/bin/env nu

# TODO
# @lilypond-version:
#     lilypond --version | lines | first | split row " " | get 2
