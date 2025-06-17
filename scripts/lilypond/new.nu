#!/usr/bin/env nu

use files.nu get-lilypond-version
use settings.nu

def format-name [name: string] {
  $name
  | str downcase
  | str replace --all " " "-"
}

def is-numeric []: string -> bool {
  try {
    $in
    | into int

    true
  } catch {
    false
  }
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

  let new_score_directory = if ($new_score_directory | path exists) {
    let next_number = (
      fd --type directory $title $"scores/($composer)"
      | lines
      | each {
          |line|

          $line
          | path split
          | last
          | split chars
          | where {is-numeric}
        }
      | math max
    ) + 1

    $"($new_score_directory)-1"
  } else {
    $new_score_directory
  }

  mkdir $new_score_directory

  for file in (
    fd $template $"($env.ENVIRONMENTS)/lilypond/score-templates"
    | lines
  ) {
    let filename = ($file | path basename | str replace .templ "")

    $context
    | to toml
    | tera --stdin --template $file
    | save $"($new_score_directory)/($filename)"
  }
}
