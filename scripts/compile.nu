use ./files.nu get_compilation_status
use ./files.nu get_files
use ./files.nu get_lilypond_output_path
use ./info.nu score_info
use ./settings.nu get_pdfs_directory

def run-lilypond [file: path, force: bool] {
  let should_compile = if $force {
    true
  } else {
    (get_compilation_status $file) in ["missing" "outdated"]
  }

  if $should_compile {
    lilypond --include helpers --output (get_lilypond_output_path $file) $file
  }
}

# Compile pdfs
export def compile-score [
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
      score_info --missing-files
    } else {
      get_files "ly" $score
    }

    for file in $files {
      run-lilypond $file $force
    }
  }
}
