set dotenv-load

export PDFS_DIRECTORY := "./pdfs"
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
@create type composer title +edit="":
    ./scripts/create {{type}} {{composer}} {{title}} {{edit}}

# Create pdf(s).
@compile *scores:
    ./scripts/compile

# Open <score> in editor and pdf viewer, recompiling on file changes.
@edit score: (compile score)
    ./scripts/edit {{score}}

# List pdf(s).
@list *scores:
    ./scripts/list {{scores}}

# Open pdf(s).
@open *scores:
    ./scripts/open {{scores}}

# Remove pdf(s).
@clean *scores:
    ./scripts/clean {{scores}}

# Update lilypond version in <scores>.
@update *scores:
    ./scripts/update {{scores}}

# Install dependencies.
@install:
    ./install-dependencies

# List <scores> with outdated or non-existent pdfs.
@outdated *scores:
    ./scripts/outdated {{scores}}

# Show status of pdf(s) for <scores>.
@status *scores:
    ./scripts/status {{scores}}
