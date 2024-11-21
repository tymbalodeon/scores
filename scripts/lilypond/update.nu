#!/usr/bin/env nu

use ./files.nu get_files
use ./files.nu get_lilypond_version

# Update dependencies and score LilyPond version
def main [
  --dependencies # Update dependencies
  --scores # Update scores to match the installed LilyPond version
] {
  let all = (not $dependencies and not $scores)

  let old_lilypond_version = if $all or $scores {
    get_lilypond_version
  } else {
    null
  }

  if $all or $dependencies {
    nix flake update
  }

  if $all {
    direnv reload
  }

  if $all or $scores {
    let new_lilypond_version = (get_lilypond_version)

    if $new_lilypond_version != $old_lilypond_version or $scores {
      for score in ((get_files "ly") ++ (get_files "ily")) {
        try {
          convert-ly --edit $score
          sd '\\version "\d\.\d{2}\.\d{2}"' $"\\version \"($new_lilypond_version)\"" $score
        }
      }
    }
  }
}
