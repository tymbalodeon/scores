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

_copy_template_files type composer title:
    #!/usr/bin/env zsh
    score_directory=./{{type}}s/{{composer}}/{{title}}
    mkdir -p "${score_directory}"
    for template in ./templates/{{type}}s/*; do
        template_name="${template:t}"
        new_score="${score_directory}/{{title}}-${template_name}"
        if test -f "${new_score}"; then
            continue
        fi
        cp "${template}" "${score_directory}"
        mv "${score_directory}/${template_name}" "${new_score}"
    done

_prepend_title title filetype file:
    #!/usr/bin/env zsh
    sed -i "" -e "s/{{filetype}}.ily/{{title}}-{{filetype}}.ily/g" {{file}}

_convert_to_titlecase word:
    #!/usr/bin/env python
    word = "{{word}}"
    word = word.replace("-", " ").title()
    print(word)

_add_title_and_composer title composer file:
    #!/usr/bin/env zsh
    sed -i "" -e "s/Title/{{title}}/g" {{file}}
    sed -i "" -e "s/Composer/{{composer}}/g" {{file}}

_add_new_score_values type composer title: (_copy_template_files type composer title)
    #!/usr/bin/env zsh
    for file in **/**{{title}}-chart.ly(N); do
        filetypes=("melody" "chords" "structure")
        for filetype in "${filetypes[@]}"; do
            just _prepend_title {{title}} "${filetype}" "${file}"
        done
        title="$(just _convert_to_titlecase {{title}})"
        composer="$(just _convert_to_titlecase {{composer}})"
        just _add_title_and_composer "${title}" "${composer}" "${file}"
        mv "${file}" "${file//-chart/}"
    done

# Create new score template.
create type composer title: (_copy_template_files type composer title) (_add_new_score_values type composer title)

_get_files extension *scores:
    #!/usr/bin/env zsh
    setopt extendedglob
    scores=({{scores}})
    if [ -z "${scores[*]}" ]; then
        files=({{ly_directories}}.{{extension}}(N))
    else
        files=()
        for file in "${scores[@]}"; do
            files+=({{ly_directories}}"${file}"*.{{extension}}(N))
        done
    fi
    printf "%s" "${files[*]}"

# Create pdf(s).
compile *scores:
    #!/usr/bin/env zsh
    IFS=" " read -r -A files <<<"$(just _get_files "ly" {{scores}})"
    if [ -z "${files[*]}" ]; then
        exit
    fi
    pdfs_directory=./pdfs
    mkdir -p "${pdfs_directory}"
    for file in "${files[@]}"; do
        without_extension="${file:r}"
        pdf_file="${pdfs_directory}"/"${without_extension:t}".pdf
        checkexec "${pdf_file}" "${without_extension}"*.*ly(N) ./*.ily -- \
        lilypond -o "${pdfs_directory}" "${file}"
    done
    if [ -n "${OUTPUT_DIRECTORY}" ]; then
        cp -r "${pdfs_directory}"/. "${OUTPUT_DIRECTORY}"
    fi

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
    if [ -z "${files[*]}" ]; then
        exit
    fi
    for file in "${files[@]}"; do
        echo "${file}"
    done

# Open pdf(s).
open *scores:
    #!/usr/bin/env zsh
    IFS=" " read -r -A files <<<"$(just _get_files "pdf" {{scores}})"
    if [ -z "${files[*]}" ]; then
        exit
    fi
    for file in "${files[@]}"; do
        open "${file}"
    done

# Remove pdf(s).
clean *scores:
    #!/usr/bin/env zsh
    IFS=" " read -r -A files <<<"$(just _get_files "pdf" {{scores}})"
    if [ -z "${files[*]}" ]; then
        exit
    fi
    for file in "${files[@]}"; do
        rm -f "${file}"
        echo "Removed ${file}".
    done
