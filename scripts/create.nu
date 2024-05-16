use ./files.nu get_lilypond_version
use ./settings.nu get_settings

# Create new scores
def create [
  template: string # Which template to use
  title: string # Title for the score
  --arranger = "" # Arranger for the score
  --composer = "" # Composer for the score
  --edit # whether to open the file for editing after creating
  --instrument = "" # Instrument name
  --subtitle = "" # Subtitle (or Artist) for the score
] {
  let files = (
    fd $template templates/
    | lines
  )

  let composer = if ($composer | is-empty) {
    get_settings "composer"
  } else {
    $composer
  }

  let lilypond_version = get_lilypond_version
    
  for file in $files {
    print (
      cat $file
      | str replace "[arranger]" $arranger
      | str replace "[composer]" $composer
      | str replace "[instrument]" $instrument
      | str replace "[lilypond_version]" $lilypond_version
      | str replace "[subtitle]" $subtitle
      | str replace "[title]" $title
    )
  }
}
