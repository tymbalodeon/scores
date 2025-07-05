set working-directory := "../.."

# View help text
@help *args:
    .environments/scripts/lilypond/help.nu {{ args }}

# Remove pdfs
[confirm]
@clean *args:
    .environments/scripts/lilypond/clean.nu {{ args }}

# Compile pdfs
@compile *args:
    .environments/scripts/lilypond/compile.nu {{ args }}

# Open <score> in $EDITOR and pdf viewer, recompiling on file changes
@edit *args:
    .environments/scripts/lilypond/edit.nu {{ args }}

# Get info about scores
@info *args:
    .environments/scripts/lilypond/info.nu {{ args }}

# Create new score
@new *args:
    .environments/scripts/lilypond/new.nu {{ args }}

# Open pdfs
@open-pdf *args:
    .environments/scripts/lilypond/open-pdf.nu {{ args }}

# View project settings
@settings *args:
    .environments/scripts/lilypond/settings.nu {{ args }}

# View available templates
@templates *args:
    .environments/scripts/lilypond/templates.nu {{ args }}

# Update dependencies and score LilyPond version
@update *args:
    .environments/scripts/lilypond/update.nu {{ args }}
