output_files := "**/**.pdf(.N)"
lilypond := """
    without_extension=$file:r;
    checkexec $without_extension.pdf $without_extension*.*ly(.N) ./*.ily -- \
    lilypond -o $without_extension $file;
"""

# Display available recipes.
@_help:
    just --list

# Create pdfs for all LilyPond files.
scores:
    #!/usr/bin/env zsh
    for file in **/**.ly(.N); do
        {{lilypond}}
    done

# Create a pdf for a single LilyPond file.
score FILE:
    #!/usr/bin/env zsh
    for file in **/**{{FILE}}*.ly(.N); do
        {{lilypond}}
    done

# Open <name> in editor and pdf viewer, recompiling on file changes.
edit FILE: (score FILE)
    #!/usr/bin/env zsh
    for file in **/**{{FILE}}*.ly(.N); do
        without_extension=$file:r;
        lilypond_file=$without_extension.ly;
        open $without_extension.pdf;
        open $lilypond_file;
        echo $lilypond_file | entr just score {{FILE}};
    done

# List any pdf(s) already created.
list:
    #!/usr/bin/env zsh
    for file in {{output_files}}; do
        echo $file;
    done

# Remove pdf(s).
clean:
    #!/usr/bin/env zsh
    for file in {{output_files}}; do
        rm -f $file;
        echo "Removed $file".;
    done
