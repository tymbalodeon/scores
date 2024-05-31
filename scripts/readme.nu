#!/usr/bin/env nu

def make_command_comment [
  command: string
  --end
  --start
] {
  let type = if $end {
    "end"
  } else {
    "start"
  }

  return $"<!-- `($command)` ($type) -->"
}

def make_command_regex [start end] {
  return $"($start)\(.|\\s\)*($end)"
}

def make_command_output [
  start: string
  output: string
  end: string
] {
  return $"($start)\n($output)\n($end)"
}

# Update README command output
export def main [] {

  let just_start = (make_command_comment "just")
  let just_end = (make_command_comment "just" --end)

  let just_deps_start = (make_command_comment "just deps")
  let just_deps_end = (make_command_comment "just deps" --end)

  let build_dependencies = [
    "gyre-fonts"
    "just"
    "lilypond"
    "nushell"
  ]

  let just_output = (
    $"```nushell\n(
        just | ansi strip
      )\n```"
  )

  let just_deps_output = (
    $"\n(
        just deps 
        | lines 
        | filter {
            |line| 
            
            not ($line | is-empty) and not (
              "ix" in $line
            ) and not (
              "flake" in $line
            )}
        | each {
            |dependency|

            let link = (
              $"[($dependency)]\(https://search.nixos.org/packages?channel=unstable&show=(
                  $dependency
                  | split row "-"
                  | drop
                  | str join "-"
                )\)"
            )

            mut is_build_dependency = false

            for build_dependency in $build_dependencies {
              if $build_dependency in $dependency {
                $is_build_dependency = true                

                break
              }
            }

            let link = if $is_build_dependency {
              $"*($link)*"
            } else {
              $link
            }

            $'- ($link)'
        }
        | to text
      )\n"
  )

  (
    open README.md
    | str replace
      --regex
      (make_command_regex $just_start $just_end)
      (make_command_output $just_start $just_output $just_end)
    | str replace
      --regex
      (make_command_regex $just_deps_start $just_deps_end)
      (make_command_output $just_deps_start $just_deps_output $just_deps_end)
    | save --force README.md
  )
}
