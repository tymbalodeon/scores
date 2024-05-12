use ./files.nu get_files
use ./files.nu get_title
use ./settings.nu get_pdfs_directory

# Compile pdf(s)
export def compile-score [
  score = "" # Score path or search term for finding pdf(s)
  --is-file # Treat <score> as a path instead of a search term
] {

  let pdfs_directory = (get_pdfs_directory)
  mkdir $pdfs_directory

  def run-lilypond [file] {
    let title = (get_title $file)
    lilypond --include helpers --output $"($pdfs_directory)/($title)" $file
  }

  if $is_file {
    run-lilypond $score
  } else {
    for file in (get_files "ly" $score) {
      run-lilypond $file
    }
  }
}
