set dotenv-load

main := "./scripts/main"
export OUTPUT_DIRECTORY := ```
    output_directory="${OUTPUT_DIRECTORY:-}"
    if [ -n "${output_directory}" ]; then
        mkdir -p "${output_directory}"
    fi
    printf "%s" "${output_directory}"
```

@_help:
    just --list

# Create new score template, and optionally edit ("--edit").
@create type composer title *edit:
    {{main}} create {{type}} {{composer}} {{title}} {{edit}}

# Create pdf(s).
@compile *scores:
    {{main}} compile {{scores}}

# Open <score> in editor and pdf viewer, recompiling on file changes.
@edit score: (compile score)
    {{main}} edit {{score}}

# List pdf(s).
@list *scores:
    {{main}} list {{scores}}

# Open pdf(s).
@open *scores:
    {{main}} open {{scores}}

# Remove pdf(s).
@clean *scores:
    {{main}} clean {{scores}}

# Update lilypond version in <scores>.
@update *scores:
    {{main}} update {{scores}}

# Install dependencies.
@install:
    ./install_dependencies

# List <scores> with outdated or non-existent pdfs.
@outdated *scores:
    {{main}} outdated {{scores}}

# Show status of pdf(s) for <scores>.
@status *scores:
    {{main}} status {{scores}}

# Commit and push all files.
commit message:
    #!/usr/bin/env zsh
    if [ -z "{{message}}" ]; then
        return
    fi
    git add .
    git commit -m "{{message}}"
    git push
