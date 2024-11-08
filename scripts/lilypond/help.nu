#!/usr/bin/env nu

# View help text
def main [
  recipe?: string # View help text for recipe
] {
  if ($recipe | is-empty) {
    (
      just
        --color always
        --justfile lilypond.just
        --list
    )
  } else {
    nu $"../scripts/lilypond/($recipe).nu" --help
 }
}
