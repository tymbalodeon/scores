set dotenv-load

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
    ./scripts/main create {{type}} {{composer}} {{title}} {{edit}}

# Create pdf(s).
@compile *scores:
    ./scripts/main compile {{scores}}

# Open <score> in editor and pdf viewer, recompiling on file changes.
@edit score: (compile score)
    ./scripts/main edit {{score}}

# List pdf(s).
@list *scores:
    ./scripts/main list {{scores}}

# Open pdf(s).
@open *scores:
    ./scripts/main open {{scores}}

# Remove pdf(s).
@clean *scores:
    ./scripts/main clean {{scores}}

# Update lilypond version in <scores>.
@update *scores:
    ./scripts/main update {{scores}}

# Install dependencies.
@install:
    ./install_dependencies

# List <scores> with outdated or non-existent pdfs.
@outdated *scores:
    ./scripts/main outdated {{scores}}

# Show status of pdf(s) for <scores>.
@status *scores:
    ./scripts/main status {{scores}}

# Switch back to main branch.
@main:
    git checkout main
