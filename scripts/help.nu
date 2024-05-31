#!/usr/bin/env nu

export def main [] {
  (
    just --list
      --color always
      --list-heading (
        [
          "Available recipes:"
          "(run `just <recipe> --help/-h` for more info)\n"
        ] | to text
      )
  )
}
