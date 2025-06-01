#!/usr/bin/env nu

use files.nu get-lilypond-version
use settings.nu

def get-directory-name [name: string] {
  $name
  | str downcase
  | str replace --all " " "-"
}

# Create new scores
def main [
  template: string # Which template to use
  title: string # Title for the score
  --arranger = "" # Arranger for the score
  --artist = "" # Artist [alias for --subtitle] for the score
  --composer = "" # Composer for the score
  --edit # whether to open the file for editing after creating
  --instrument = "" # Instrument name
  --subtitle = "" # Subtitle for the score
] {
  let files = (
    fd $template templates
    | lines
  )

  let composer = if ($composer | is-empty) {
    settings "composer"
  } else {
    "Anonymous"
  }

  let composer_directory = get-directory-name $composer

  let subtitle = if ($subtitle | is-not-empty) {
    $subtitle
  } else {
    $artist
  }

  let title_directory = get-directory-name $title
  let new_score_directory = $"scores/($composer_directory)/($title_directory)"
  mkdir $new_score_directory
  let lilypond_version = get-lilypond-version

  for file in $files {
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
