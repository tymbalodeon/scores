use ./files.nu get_files

def update-dependencies [
  --dependencies # Update dependencies
  --scores # Update scores to match the installed LilyPond version
] {
  let all = (not $dependencies and not $scores)

  if $all or $dependencies {
    nix flake update
  }

  if $all or $scores {
    let lilypond_version = (
      lilypond --version 
      | lines 
      | first 
      | split row " " 
      | get 2
    )

    for score in ((get_files "ly") ++ (get_files "ily")) {
      convert-ly --edit $score
      sd '\\version "\d\.\d{2}\.\d{2}"' $"\\version \"($lilypond_version)\"" $score
    }
  }
}
