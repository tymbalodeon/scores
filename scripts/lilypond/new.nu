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
  let context = {
    arranger: $arranger

    composer:  (
      format-name (
        if ($composer | is-empty) {
          settings "composer"
        } else {
          "Anonymous"
        }
      )
    )

    instrument: $instrument
    lilypond_version: (get-lilypond-version)

    subtitle: (
      if ($subtitle | is-not-empty) {
        $subtitle
      } else {
        $artist
      }
    )

    title: $title
  }

  let new_score_directory = $"scores/($composer)/(format-name $title)"

  # TODO: append number to file if a score already exists with the same name
  # let new_score_directory = if ($new_score_directory | path exists) {
  #   let existing_scores = (
  #     fd $title scores --type dir
  #     | lines
  #     | each {|line| $line | path split | last}
  #   )

  #   # if ($existing_scores | find $title | is-not-empty) {

  #   # }

  #   # $"scores/($composer)/($title)"
  # } else {
  #   $new_score_directory
  # }

  mkdir $new_score_directory

  for file in (fd $template $"($env.ENVIRONMENTS)/lilypond/score-templates" | lines) {
    $context
    | to toml
    | tera --stdin --template $file
    | save $"($new_score_directory)/($file | path basename | str replace .templ "")"
  }
}
