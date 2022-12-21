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

_get_new_score_parent_directory type:
    #!/usr/bin/env zsh
    if [ {{type}} = "piano" ]; then
        printf "%s" "scores"
        exit
    fi
    printf "%s" "charts"

_get_new_score_name score_directory title type template:
    #!/usr/bin/env zsh
    template_path={{template}}
    if [ {{type}} = "piano" ]; then
        extension=."${template_path:e}"
    else
        extension=-"${template_path:t}"
    fi
    printf "%s" {{score_directory}}/{{title}}"${extension}"

_copy_template_files type composer title:
    #!/usr/bin/env zsh
    parent_directory=$(just _get_new_score_parent_directory {{type}})
    score_directory=./"${parent_directory}"/{{composer}}/{{title}}
    if [ -d "${score_directory}" ]; then
        exit
    fi
    mkdir -p "${score_directory}"
    for template in ./templates/{{type}}*/*; do
        new_score=$(
            just _get_new_score_name \
                "${score_directory}" {{title}} {{type}} "${template}"
        )
        if test -f "${new_score}"; then
            continue
        fi
        cp "${template}" "${score_directory}"
        mv "${score_directory}/${template:t}" "${new_score}"
    done

_prepend_titles title file:
    #!/usr/bin/env zsh
    filetypes=("melody" "changes" "structure")
    for filetype in "${filetypes[@]}"; do
        sed -i "" -e "s/${filetype}.ily/{{title}}-${filetype}.ily/g" {{file}}
    done

_convert_to_titlecase word:
    #!/usr/bin/env python
    word = "{{word}}"
    word = word.replace("-", " ").title()
    print(word)

_add_title_and_composer title composer file:
    #!/usr/bin/env zsh
    title="$(just _convert_to_titlecase {{title}})"
    composer="$(just _convert_to_titlecase {{composer}})"
    sed -i "" -e "s/Title/${title}/g" {{file}}
    sed -i "" -e "s/Composer/${composer}/g" {{file}}

_add_new_score_values type composer title:
    #!/usr/bin/env zsh
    just _copy_template_files {{type}} {{composer}} {{title}}
    for file in **/**{{title}}-main.ly(N); do
        just _prepend_titles {{title}} "${file}"
        just _add_title_and_composer {{title}} {{composer}} "${file}"
        mv "${file}" "${file//-main/}"
    done

# Create new score template, and optionally edit ("--edit").
create type composer title *edit:
    #!/usr/bin/env zsh
    just _copy_template_files {{type}} {{composer}} {{title}}
    just _add_new_score_values {{type}} {{composer}} {{title}}
    if [ "{{edit}}" = "--edit" ]; then
        just edit {{title}}
    fi

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

_run_checkexec command *scores:
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
            {{command}}
    done

# Create pdf(s).
compile *scores:
    #!/usr/bin/env zsh
    just _run_checkexec \
        'just _run_lilypond_and_copy_to_output \
            "${file}" "${pdf_file}"' {{scores}}

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
    done
    watchexec -e ly,ily just compile {{score}}

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
        if [ -n "${OUTPUT_DIRECTORY}" ]; then
            output_file="${OUTPUT_DIRECTORY}"/"${file:t}"
            rm -f "${output_file}"
        fi
        echo "Removed ${file}".
    done

# Update lilypond version in <scores>.
update *scores:
    #!/usr/bin/env zsh
    IFS=" " read -r -A files <<<"$(just _get_files "ly" {{scores}})"
    if [ -z "${files[*]}" ]; then
        exit
    fi
    for file in "${files[@]}"; do
        convert-ly --current-version --edit "${file}"
        rm -f "${file}"~
    done

# Install dependencies.
install:
    #!/usr/bin/env zsh
    ./install-dependencies

_display_score_name score:
    #!/usr/bin/env python
    score = "{{score}}"
    score = score.replace("-", " ")
    score = score.title()
    print(score)

# List <scores> with outdated or non-existent pdfs.
outdated *scores:
    #!/usr/bin/env zsh
    just _run_checkexec 'just _display_score_name "${pdf_file:t:r}"' {{scores}}
