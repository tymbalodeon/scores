# View help text
@help *recipe:
    ../scripts/lilypond/help.nu {{ recipe }}

# Remove pdfs
[confirm]
@clean *search_term:
    ../scripts/lilypond/clean.nu {{ search_term }}

# Compile pdfs
[no-cd]
@compile *search_term:
    ./scripts/lilypond/compile.nu {{ search_term }}

# Create new score
@create *args:
    ../scripts/lilypond/create.nu {{ args }}

# Open <score> in $EDITOR and pdf viewer, recompiling on file changes
@edit *args:
    ../scripts/lilypond/edit.nu {{ args }}

# Get info about scores
@info *search_term:
    ../scripts/lilypond/info.nu {{ search_term }}

# Open pdfs
@open-pdf *search_term:
    ../scripts/lilypond/open-pdf.nu {{ search_term }}

# View project settings
@settings *args:
    ../scripts/lilypond/settings.nu {{ args }}

# View available templates
@templates *args:
    ../scripts/lilypond/templates.nu {{ args }}

# Update dependencies and score LilyPond version
@update *help:
    ../scripts/lilypond/update.nu {{ help }}
