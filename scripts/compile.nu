use ./files.nu get_compilation_status
use ./files.nu get_files
use ./files.nu get_lilypond_output_path
use ./files.nu get_title
use ./settings.nu get_pdfs_directory

def run-lilypond [file] {
  let title = (get_title $file)

  let should_compile = (
    (get_compilation_status $file) in ["missing" "outdated"]
  )

  let pdf_file_base = (get_lilypond_output_path $file)

  if $should_compile {
    lilypond --include helpers --output $pdf_file_base $file
  }
}

# Compile pdf(s)
export def compile-score [
  score = "" # Score path or search term for finding pdf(s)
  --is-file # Treat <score> as a path instead of a search term
] {

  let pdfs_directory = (get_pdfs_directory)
  mkdir $pdfs_directory

  if $is_file {
    run-lilypond $score
  } else {
    for file in (get_files "ly" $score) {
      run-lilypond $file
    }
  }
}
