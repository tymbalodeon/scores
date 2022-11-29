set dotenv-load

export OUTPUT_DIRECTORY := ```
    OUTPUT_DIRECTORY="${OUTPUT_DIRECTORY:-}"
    if [ -n "${OUTPUT_DIRECTORY}" ]; then
        mkdir -p "${OUTPUT_DIRECTORY}"
    fi
    printf "%s" "${OUTPUT_DIRECTORY}"
```

ly_directories := "(^templates/)#**"
pdfs_directory := "./pdfs"

@_help:
    just --list

_copy_template_files type composer title:
    #!/usr/bin/env zsh
    if [ {{type}} = "piano" ]; then
        parent_directory="scores"
        use_template_name=false
    else
        parent_directory="charts"
        use_template_name=ture
    fi
    score_directory=./"${parent_directory}"/{{composer}}/{{title}}
    if [ -d "${score_directory}" ]; then
        exit
    fi
    mkdir -p "${score_directory}"
    for template in ./templates/{{type}}*/*; do
        template_name="${template:t}"
        new_score="${score_directory}/{{title}}"
        if [ "$use_template_name" = true ]; then
            new_score="${new_score}-${template_name}"
        else
            new_score="${new_score}.${template:e}"
        fi
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

_get_pdf_files ly_file:
    #!/usr/bin/env zsh
    ly_file={{ly_file}}
    score_title="${ly_file:r:t}"
    pdf_files=({{pdfs_directory}}/*"${score_title}"*(N))
    printf "%s" "${pdf_files[*]}"

_run_lilypond_and_copy_to_output ly_file pdf_file:
    #!/usr/bin/env zsh
    lilypond -o {{pdfs_directory}} {{ly_file}}
    if [ -n "${OUTPUT_DIRECTORY}" ]; then
        ly_file={{ly_file}}
        IFS=" " read -r -A pdf_files <<<"$(just _get_pdf_files "${ly_file}")"
        for file in "${pdf_files[@]}"; do
            cp "${file}" "${OUTPUT_DIRECTORY}"
        done
    fi

# Create pdf(s).
compile *scores:
    #!/usr/bin/env zsh
    IFS=" " read -r -A files <<<"$(just _get_files "ly" {{scores}})"
    if [ -z "${files[*]}" ]; then
        exit
    fi
    mkdir -p {{pdfs_directory}}
    for file in "${files[@]}"; do
        without_extension="${file:r}"
        pdf_file={{pdfs_directory}}/"${without_extension:t}".pdf
        checkexec "${pdf_file}" "${without_extension}"*.*ly(N) ./*.ily -- \
        just _run_lilypond_and_copy_to_output "${file}" "${pdf_file}"
    done

# Open <score> in editor and pdf viewer, recompiling on file changes.
edit score: (compile score)
    #!/usr/bin/env zsh
    for file in **/**{{score}}*.ly(N); do
        without_extension="${file:r}"
        ly_file="${without_extension}.ly"
        IFS=" " read -r -A pdf_files <<<"$(just _get_pdf_files "${ly_file}")"
        for file in "${pdf_files[@]}"; do
            open "${file}"
        done
        open "${ly_file}"
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
