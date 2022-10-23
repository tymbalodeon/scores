pdfs := "**/**.pdf(.N)"
lilypond := """
    without_extension=$file:r;
    checkexec $without_extension.pdf $without_extension*.*ly(.N) ./*.ily -- \
    lilypond -o $without_extension $file;
"""

# Display available recipes.
@_help:
    just --list

# Create pdfs for all scores.
scores:
    #!/usr/bin/env zsh
    for file in **/**.ly(.N); do
        {{lilypond}}
    done

# Create a pdf for SCORE.
score SCORE:
    #!/usr/bin/env zsh
    for file in **/**{{SCORE}}*.ly(.N); do
        {{lilypond}}
    done

# Open SCORE in editor and pdf viewer, recompiling on file changes.
edit SCORE: (score SCORE)
    #!/usr/bin/env zsh
    for file in **/**{{SCORE}}*.ly(.N); do
        without_extension=$file:r;
        lilypond_file=$without_extension.ly;
        open $without_extension.pdf;
        open $lilypond_file;
        echo $lilypond_file | entr just score {{SCORE}};
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
