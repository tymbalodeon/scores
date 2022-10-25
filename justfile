set dotenv-load

export OUTPUT_DIRECTORY := ```
    OUTPUT_DIRECTORY="${OUTPUT_DIRECTORY:-}";
    if [ -n "${OUTPUT_DIRECTORY}" ]; then
        mkdir -p "${OUTPUT_DIRECTORY}"
    fi
    printf "${OUTPUT_DIRECTORY}"
```

pdfs := "**/**.pdf(N)"
lilypond := """
    without_extension=\"${file:r}\"
    pdf_file=\"${without_extension}.pdf\"
    checkexec \"${pdf_file}\" ${without_extension}*.*ly(N) ./*.ily -- \
    lilypond -o \"${without_extension}\" \"${file}\"
"""

@_help:
    just --list

# Create new score template.
new type composer name:
    #!/usr/bin/env zsh
    score_directory=./{{type}}s/{{composer}}/{{name}}
    mkdir -p "${score_directory}"
    score="${score_directory}/{{name}}"
    templates="$(ls ./templates/{{type}}s)"
    for template in ./templates/{{type}}s/*; do
        cp "${template}" "${score_directory}"
        template_name="${template:t}"
        mv "${score_directory}/${template_name}" \
            "${score_directory}/{{name}}-${template_name}"
    done
    for file in **/**{{name}}-chart.ly(N); do
        mv "${file}" "${file//-chart/}"
    done

# Create pdfs for all scores.
scores:
    #!/usr/bin/env zsh
    for file in **/**.ly(N); do
        {{lilypond}}
        if [ -n "${OUTPUT_DIRECTORY}" ]; then
            parent_directory="${OUTPUT_DIRECTORY}/${file:r:h}"
            mkdir -p "${parent_directory:h}"
            cp "${pdf_file}" "${parent_directory}.pdf"
        fi
    done

# Create a pdf for <score>.
score score:
    #!/usr/bin/env zsh
    for file in **/**{{score}}*.ly(N); do
        {{lilypond}}
    done

# Open <score> in editor and pdf viewer, recompiling on file changes.
edit score: (score score)
    #!/usr/bin/env zsh
    if [ ! **/**{{score}}*.ly(N) ]; then
        echo \"{{score}}\" not found.
        exit
    fi
    for file in **/**{{score}}*.ly(N); do
        without_extension="${file:r}"
        lilypond_file="${without_extension}.ly"
        open "${without_extension}.pdf"
        open "${lilypond_file}"
        watchexec -e ly,ily just score {{score}}
    done

# List all pdfs already created.
list:
    #!/usr/bin/env zsh
    for file in {{pdfs}}; do
        echo "${file}"
    done

# Open <score> pdf.
open score:
    #!/usr/bin/env zsh
    for file in **/**{{score}}*.pdf(N); do
        open "${file}"
    done

# Remove all pdfs.
clean:
    #!/usr/bin/env zsh
    for file in {{pdfs}}; do
        rm -f "${file}"
        echo "Removed ${file}".
    done
