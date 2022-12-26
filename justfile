set dotenv-load

export OUTPUT_DIRECTORY := ```
    OUTPUT_DIRECTORY="${OUTPUT_DIRECTORY:-}"
    if [ -n "${OUTPUT_DIRECTORY}" ]; then
        mkdir -p "${OUTPUT_DIRECTORY}"
    fi
    printf "%s" "${OUTPUT_DIRECTORY}"
```

non_template_files := "(^templates/)#*"
pdfs_directory := "./pdfs"
export PDFS_DIRECTORY := "./pdfs"

@_help:
    just --list

# Create new score template, and optionally edit ("--edit").
@create type composer title +edit="":
    ./scripts/create {{type}} {{composer}} {{title}} {{edit}}

_get_files extension *scores:
    #!/usr/bin/env zsh
    setopt extendedglob
    scores=({{scores}})
    if [ -z "${scores[*]}" ]; then
        files=({{non_template_files}}.{{extension}}(N))
    else
        files=()
        for file in "${scores[@]}"; do
            files+=({{non_template_files}}"${file}"*.{{extension}}(N))
        done
    fi
    printf "%s" "${files[*]}"

_get_pdf_files ly_file:
    #!/usr/bin/env zsh
    score_title={{file_stem(ly_file)}}
    pdf_files=({{pdfs_directory}}/*"${score_title}"*(N))
    printf "%s" "${pdf_files[*]}"

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
install:
    #!/usr/bin/env zsh
    ./install-dependencies

_get_outdated *scores:
    #!/usr/bin/env zsh
    just _run_checkexec \ 'echo "${pdf_file:t:r}"' {{scores}}

# List <scores> with outdated or non-existent pdfs.
outdated *scores:
    #!/usr/bin/env zsh
    outdated_scores=($(just _get_outdated {{scores}}))
    IFS=$'\n' outdated_scores=($(sort <<<"${outdated_scores[*]}"))
    for file in "${outdated_scores[@]}"; do
        echo "${(C)file//-/ }"
    done

_get_sorted_score_names *scores:
    #!/usr/bin/env zsh
    score_directories=(
        **/.(Ne: \
            '[[ $REPLY != pdfs* ]] \
                && [[ $REPLY != templates* ]]  \
                && test -z $REPLY/*(/N[1])' \
        ::h)
    )
    scores=()
    if [[ ! -z "{{scores}}" ]]; then
        for search_term in {{scores}}; do
            for score in "${score_directories[@]}"; do
                if [[ "${score}" = *"${search_term}"* ]]; then
                    scores+=("${score}")
                fi
            done
        done
    else
        for score in "${score_directories[@]}"; do
            scores+=("${score}")
        done
    fi
    IFS=$'\n' scores=($(sort <<<"${scores[*]}"))
    printf "%s" "${scores[*]}"

# Show status of pdf(s) for <scores>.
status *scores:
    #!/usr/bin/env zsh
    scores=($(just _get_sorted_score_names {{scores}}))
    outdated_scores=($(just _get_outdated))
    results="ARTIST;TITLE;PDF STATUS\n------;-----;----------\n"
    for score in "${scores[@]}"; do
        file_name="${score:t}"
        score="${(C)${score//-/ }}"
        artist="${score:h:t}"
        results+="${artist};${score:t};"
        pdf_files=(**/**"${file_name}"*.pdf(N))
        if [ "${pdf_files}" = "" ]; then
            pdf_status="NO PDF"
        else
            pdf_status="up to date"
        fi
        for file in "${pdf_files[@]}"; do
            file_stem="${file:t:r}"
            score_name="${file_stem//-form/}"
            score_name="${score_name//-video/}"
            if ((${outdated_scores[(Ie)${score_name}]})); then
                pdf_status="OUTDATED"
            fi
        done
        results+="${pdf_status:-}\n"
    done
    echo "${results}" | column -t -s ";"
