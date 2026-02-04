#!/usr/bin/env nu

use files.nu get-files
use files.nu get-lilypond-version

# Update scores
def "main scores" [] {
  for score in ((get-files "ly") ++ (get-files "ily")) {
    try {
      convert-ly --edit $score

      (
        sd
          '\\version"\d\.\d{2}\.\d{2}"'
          $"\\version \"(get-lilypond-version)\""
          $score
      )
    }
  }
}

# Update lilypond version and scores
def main [] {
  main scores
}
