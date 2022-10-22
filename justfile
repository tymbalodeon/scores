# List all recipes.
default:
    @just --list

# List any pdf(s) already created.
list:
    #!/bin/zsh
    for file in **/**.pdf(N); do
        echo $file;
    done

# Remove pdf(s).
clean:
    #!/bin/zsh
    for file in **/**.pdf(N); do
        rm -f $file;
        echo "Removed $file".;
    done
