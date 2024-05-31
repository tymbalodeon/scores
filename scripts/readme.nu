#!/usr/bin/env nu

# Update README command output
export def main [] {
  (
    open README.md
    | str replace
      --regex
      "<!-- `just` start -->(.|\\s)*<!-- `just` end -->"
      $"<!-- `just` start -->\n```nushell\n(
        just | ansi strip
      )\n```\n<!-- `just` end -->"
    | save --force README.md
  )
}
