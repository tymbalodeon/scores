set dotenv-load

export OUTPUT_DIRECTORY := ```
    OUTPUT_DIRECTORY=${OUTPUT_DIRECTORY:-};
    if [ -n "${OUTPUT_DIRECTORY}" ]; then
        mkdir -p $OUTPUT_DIRECTORY;
    fi;
    echo $OUTPUT_DIRECTORY;
```

pdfs := "**/**.pdf(N)"
lilypond := """
    without_extension=$file:r;
    pdf_file=$without_extension.pdf;
    checkexec $pdf_file $without_extension*.*ly(N) ./*.ily -- \
    lilypond -o $without_extension $file;
"""

@_help:
    just --list

# Create new score template.
new type composer name:
    #!/usr/bin/env zsh
    score_directory=./{{type}}s/{{composer}}/{{name}};
    mkdir -p $score_directory;
    score=$score_directory/{{name}};
    files=(
        $score.ly
        $score-chords.ily
        $score-melody.ily
        $score-structure.ily
    );
    for file in $files; do
        touch $file;
    done


# Create pdfs for all scores.
scores:
    #!/usr/bin/env zsh
    for file in **/**.ly(N); do
        {{lilypond}}
        if [ -n "${OUTPUT_DIRECTORY}" ]; then
            parent_directory=$OUTPUT_DIRECTORY/$file:r:h;
            mkdir -p $parent_directory:h;
            cp $pdf_file $parent_directory.pdf;
        fi;
    done

# Create a pdf for SCORE.
score score:
    #!/usr/bin/env zsh
    for file in **/**{{score}}*.ly(N); do
        {{lilypond}}
    done

# Open SCORE in editor and pdf viewer, recompiling on file changes.
edit score: (score score)
    #!/usr/bin/env zsh
    if [ ! **/**{{score}}*.ly(N) ]; then
        echo \"{{score}}\" not found.;
        exit;
    fi;
    for file in **/**{{score}}*.ly(N); do
        without_extension=$file:r;
        lilypond_file=$without_extension.ly;
        open $without_extension.pdf;
        open $lilypond_file;
        watchexec -e ly,ily just score {{score}}
    done

# List all pdfs already created.
list:
    #!/usr/bin/env zsh
    for file in {{pdfs}}; do
        echo $file;
    done

# Remove all pdfs.
clean:
    #!/usr/bin/env zsh
    for file in {{pdfs}}; do
        rm -f $file;
        echo "Removed $file".;
    done
