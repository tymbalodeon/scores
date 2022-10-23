input_files := "**/**.ly(.N)"
output_files := "**/**.pdf(.N)"

# Display available recipes.
@help:
    just --list

# Create pdfs for all LilyPond files.
scores:
    #!/bin/zsh
    for file in {{input_files}}; do
        checkexec $file:r.pdf $file:r*.*ly(.N) ./*.ily -- \
        lilypond -o $file:r $file 2>&1 | tee $file:r.log;
    done

# List any pdf(s) already created.
list:
    #!/bin/zsh
    for file in {{output_files}}; do
        echo $file;
    done

# Remove pdf(s).
clean:
    #!/bin/zsh
    for file in {{output_files}}; do
        rm -f $file;
        echo "Removed $file".;
    done
