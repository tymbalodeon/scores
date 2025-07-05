#!/usr/bin/env nu

use ../environment.nu get-project-path
use files.nu get-compilation-status
use files.nu get-files
use files.nu get-lilypond-output-path
use info.nu
use settings.nu get-pdfs-directory

def display-message [
  action: string
  message: string
  --color-entire-message
  --color: string
] {
  let color = if ($color | is-not-empty) {
    $color
  } else match $color_entire_message {
    true => (
      match $action {
        "Added" =>  "light_green_bold"
        "Removed" => "light_yellow_bold"
        "Skipped" => "light_gray_bold"
        "Upgraded" =>  "light_cyan_bold"
        _ => "white"
      }
    )

    false => (
      match $action {
        "Added" =>  "green_bold"
        "Removed" => "yellow_bold"
        "Skipped" => "light_gray_dimmed"
        "Upgraded" =>  "cyan_bold"
        _ => "white"
      }
    )
  }

  mut action = $action

  while (($action | split chars | length) < 8) {
    $action = $" ($action)"
  }

  let message = if $color_entire_message {
    $"(ansi $color)($action) ($message)(ansi reset)"
  } else {
    $"(ansi $color)($action)(ansi reset) ($message)"
  }

  print $"  ($message)"
}

def run-lilypond [file: path, force: bool] {
  let should_compile = if $force {
    true
  } else {
    (get-compilation-status $file) in ["missing" "outdated"]
  }

  if $should_compile {
    display-message Compiling $file --color green_bold

    (
      lilypond
        --include (get-project-path helpers)
        --output (get-lilypond-output-path $file)
        $file
    )
  }
}

# Compile pdfs
export def main [
  score = "" # Score path or search term for finding pdfs
  --is-file # Treat <score> as a path instead of a search term
  --force # Compile score even if up-to-date
  --missing # Only compile scores that are missing a pdf
] {

  let pdfs_directory = (get-pdfs-directory)
  mkdir $pdfs_directory

  if $is_file {
    run-lilypond $score $force
  } else {
    let files = if $missing {
      info --missing-files
    } else {
      get-files "ly" $score
    }

    let errors = (
      $files
      | par-each {
          |file|

          let path = ($file | path parse)
          let error_log = $"($path | get parent | path join ($path | get stem)).error"

          try {
            run-lilypond $file $force out+err> $error_log
            rm $error_log
          } catch {
              $file
              | wrap file
              | merge ((cat $error_log) | wrap output)
          }
        }
    )

    if ($errors | is-not-empty) {
      print ""
      print ($errors | table --index false)
    }
  }
}
