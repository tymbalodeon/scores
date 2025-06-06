set working-directory := ".."

# View help text
@help *args:
    ./scripts/lilypond/help.nu {{ args }}

# Remove pdfs
[confirm]
@clean *args:
    ./scripts/lilypond/clean.nu {{ args }}

# Compile pdfs
@compile *args:
    ./scripts/lilypond/compile.nu {{ args }}

# Open <score> in $EDITOR and pdf viewer, recompiling on file changes
@edit *args:
    ./scripts/lilypond/edit.nu {{ args }}

# Get info about scores
@info *args:
    ./scripts/lilypond/info.nu {{ args }}

# Create new score
@new *args:
    ./scripts/lilypond/new.nu {{ args }}

# Open pdfs
@open-pdf *args:
    ./scripts/lilypond/open-pdf.nu {{ args }}

# View project settings
@settings *args:
    ./scripts/lilypond/settings.nu {{ args }}

# View available templates
@templates *args:
    ./scripts/lilypond/templates.nu {{ args }}

# Update dependencies and score LilyPond version
@update *args:
    ./scripts/lilypond/update.nu {{ args }}
