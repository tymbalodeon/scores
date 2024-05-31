#!/usr/bin/env nu

# List dependencies
export def main [
  --find: string # Search for a dependency
] {
  let dev_shell = ".#devShells.x86_64-darwin.default.nativeBuildInputs"

  let dependencies = (
    nix eval $dev_shell --apply "builtins.map (package: package.name)"
    | split row " "
    | filter {|line| not ($line in ["[" "]"])}
    | each {
        |line|

        $line
        | str replace --all '"' ""
      }
    | sort
    | to text
  )

  if ($find | is-empty) {
    return $dependencies
  } else {
    return (
      $dependencies
      | find $find
      | to text
    )
  }
}
