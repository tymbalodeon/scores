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
    for score in (get_files "ly") {
      convert-ly --edit $score
    }
  }
}
