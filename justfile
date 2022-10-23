set dotenv-load

export OUTPUT_DIRECTORY := ```
    OUTPUT_DIRECTORY=${OUTPUT_DIRECTORY:-};
    if [ -n "${OUTPUT_DIRECTORY}" ]; then
        mkdir -p $OUTPUT_DIRECTORY;
    fi;
    echo $OUTPUT_DIRECTORY;
```

pdfs := "**/**.pdf(.N)"
lilypond := """
    without_extension=$file:r;
    pdf_file=$without_extension.pdf;
    checkexec $pdf_file $without_extension*.*ly(.N) ./*.ily -- \
    lilypond -o $without_extension $file;
"""

# Display available recipes.
@_help:
    just --list

# Create pdfs for all scores.
scores:
    #!/usr/bin/env zsh
    if [[ ! $(command -v checkexec) ]] then
        printf 'This recipe requires "\e]8;;https://github.com/kurtbuilds/checkexec\e\\checkexec\e]8;;\e\\". Please run "cargo install checkexec" and try again.\n'
        exit;
    fi;
    for file in **/**.ly(.N); do
        {{lilypond}}
        if [ -n "${OUTPUT_DIRECTORY}" ]; then
            parent_directory=$OUTPUT_DIRECTORY/$file:r:h;
            mkdir -p $parent_directory:h;
            cp $pdf_file $parent_directory.pdf;
        fi;
    done

# Create a pdf for SCORE.
score SCORE:
    #!/usr/bin/env zsh
    if [[ ! $(command -v checkexec) ]] then
        printf 'This recipe requires "\e]8;;https://github.com/kurtbuilds/checkexec\e\\checkexec\e]8;;\e\\". Please run "cargo install checkexec" and try again.\n'
        exit;
    fi;
    for file in **/**{{SCORE}}*.ly(.N); do
        {{lilypond}}
    done

# Open SCORE in editor and pdf viewer, recompiling on file changes.
edit SCORE: (score SCORE)
    #!/usr/bin/env zsh
    if [[ ! $(command -v watchexec) ]] then
        printf 'This recipe requires "\e]8;;https://skim-app.sourceforge.io/\e\\skim\e]8;;\e\\". Please run "brew install skim" and try again.\n'
        exit;
    fi;
    for file in **/**{{SCORE}}*.ly(.N); do
        without_extension=$file:r;
        lilypond_file=$without_extension.ly;
        open $without_extension.pdf;
        open $lilypond_file;
        printf $lilypond_file | entr just score {{SCORE}};
    done

# List all pdfs already created.
list:
    #!/usr/bin/env zsh
    for file in {{pdfs}}; do
        printf $file;
    done

# Remove all pdfs.
clean:
    #!/usr/bin/env zsh
    for file in {{pdfs}}; do
        rm -f $file;
        printf "Removed $file".;
    done
