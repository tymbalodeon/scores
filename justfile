set dotenv-load

export OUTPUT_DIRECTORY := ```
    OUTPUT_DIRECTORY="${OUTPUT_DIRECTORY:-}"
    if [ -n "${OUTPUT_DIRECTORY}" ]; then
        mkdir -p "${OUTPUT_DIRECTORY}"
    fi
    printf "%s" "${OUTPUT_DIRECTORY}"
```

ly_directories := "(^templates/)#**"

@_help:
    just --list

_prepend_name name filetype file:
    #!/usr/bin/env zsh
    sed -i "" -e "s/{{filetype}}.ily/{{name}}-{{filetype}}.ily/g" {{file}}


# Create new score template.
create type composer name:
    #!/usr/bin/env zsh
    score_directory=./{{type}}s/{{composer}}/{{name}}
    mkdir -p "${score_directory}"
    for template in ./templates/{{type}}s/*; do
        cp "${template}" "${score_directory}"
        template_name="${template:t}"
        mv "${score_directory}/${template_name}" \
            "${score_directory}/{{name}}-${template_name}"
    done
    for file in **/**{{name}}-chart.ly(N); do
        filetypes=("melody" "chords" "structure")
        for filetype in "${filetypes[@]}"; do
            just _prepend_name {{name}} "${filetype}" "${file}"
        done
        mv "${file}" "${file//-chart/}"
    done

_get_files extension *scores:
    #!/usr/bin/env zsh
    setopt extendedglob
    scores=({{scores}})
    if [ -z "${scores[*]}" ]; then
        files=({{ly_directories}}.{{extension}})
    else
        files=()
        for file in "${scores[@]}"; do
            files+=({{ly_directories}}"${file}"*.{{extension}})
        done
    fi
    printf "%s" "${files[*]}"

# Create pdf(s).
compile *scores:
    #!/usr/bin/env zsh
    IFS=" " read -r -A files <<<"$(just _get_files "ly" {{scores}})"
    for file in "${files[@]}"; do
        without_extension="${file:r}"
        pdf_file="${without_extension}.pdf"
        checkexec "${pdf_file}" "${without_extension}"*.*ly(N) ./*.ily -- \
        lilypond -o "${without_extension}" "${file}"
        if [ -n "${OUTPUT_DIRECTORY}" ]; then
            parent_directory="${OUTPUT_DIRECTORY}/${file:r:h}"
            mkdir -p "${parent_directory:h}"
            cp "${pdf_file}" "${parent_directory}.pdf"
        fi
    done

# Open <score> in editor and pdf viewer, recompiling on file changes.
edit score: (compile score)
    #!/usr/bin/env zsh
    for file in **/**{{score}}*.ly(N); do
        without_extension="${file:r}"
        lilypond_file="${without_extension}.ly"
        open "${without_extension}.pdf"
        open "${lilypond_file}"
        watchexec -e ly,ily just compile {{score}}
    done

# List pdf(s).
list *scores:
    #!/usr/bin/env zsh
    IFS=" " read -r -A files <<<"$(just _get_files "pdf" {{scores}})"
    for file in "${files[@]}"; do
        echo "${file}"
    done

# Open pdf(s).
open *scores:
    #!/usr/bin/env zsh
    IFS=" " read -r -A files <<<"$(just _get_files "pdf" {{scores}})"
    for file in "${files[@]}"; do
        open "${file}"
    done

# Remove pdf(s).
clean *scores:
    #!/usr/bin/env zsh
    IFS=" " read -r -A files <<<"$(just _get_files "pdf" {{scores}})"
    for file in "${files[@]}"; do
        rm -f "${file}"
        echo "Removed ${file}".
    done
