#!/usr/bin/env nu

use files.nu get-lilypond-version
use settings.nu

def format-name [name: string] {
  $name
  | str downcase
  | str replace --all " " "-"
}

# Create new scores
def main [
  title? = "Title" # Title for the score
  template? = "single" # Which template to use
  --arranger = "" # Arranger for the score
  --artist = "" # Artist [alias for --subtitle] for the score
  --composer = "" # Composer for the score
  --edit # whether to open the file for editing after creating
  --instrument = "" # Instrument name
  --subtitle = "" # Subtitle for the score
] {
  let composer = (
    format-name (
      if ($composer | is-empty) {
        settings "composer"
      } else {
        "Anonymous"
      }
    )
  )

  let new_score_directory = $"scores/($composer)/(format-name $title)"

  let new_score_directory = if ($new_score_directory | path exists) {
    let existing_scores = (
      fd $title scores --type dir
      | lines
      | each {|line| $line | path split | last}
    )

    if ($existing_scores | find $title | is-not-empty) {

    }

    # $"scores/($composer)/($title)"
  } else {
    $new_score_directory
  }

  mkdir $new_score_directory
  let lilypond_version = (get-lilypond-version)

  let subtitle = if ($subtitle | is-not-empty) {
    $subtitle
  } else {
    $artist
  }

  for file in (fd $template templates | lines) {
    cat $file
    | str replace --all "[arranger]" $arranger
    | str replace --all "[composer]" $composer
    | str replace --all "[instrument]" $instrument
    | str replace --all "[lilypond_version]" $lilypond_version
    | str replace --all "[subtitle]" $subtitle
    | str replace --all "[title]" $title
    | save $"($new_score_directory)/($file | path basename)"
  }
}
