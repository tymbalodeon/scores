#!/usr/bin/env nu

use ../environment.nu display-message
use ../environment.nu get-project-path
use ./files.nu get_compilation_status
use ./files.nu get_files
use ./files.nu get_lilypond_output_path
use ./info.nu
use ./settings.nu get_pdfs_directory

def run-lilypond [file: path, force: bool] {
  let should_compile = if $force {
    true
  } else {
    (get_compilation_status $file) in ["missing" "outdated"]
  }

  if $should_compile {
    display-message Compiling $file --color green_bold

    (
      lilypond
        --include (get-project-path helpers)
        --output (get_lilypond_output_path $file)
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

  let pdfs_directory = (get_pdfs_directory)
  mkdir $pdfs_directory

  if $is_file {
    run-lilypond $score $force
  } else {
    let files = if $missing {
      info --missing-files
    } else {
      get_files "ly" $score
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
