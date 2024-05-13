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

    def get_modified [file] {
      let metadata = (ls --long $file)

      return (
        if ($metadata | is-empty) {
          null
        } else {
          (
            $metadata
            | first
            | get modified
          )
        }
      )
    }

    let pdf_file_base = ($"($pdfs_directory)/($title)")
    let pdf_file = $"($pdf_file_base).pdf"

    let should_compile = if ($pdf_file | path exists) {
      let ly_modified = (get_modified $file)
      let pdf_modified = (get_modified $"($pdf_file_base).pdf")

      $ly_modified > $pdf_modified
    } else {
      true
    }

    if $should_compile {
      lilypond --include helpers --output $pdf_file_base $file
    }
  }

  if $is_file {
    run-lilypond $score
  } else {
    for file in (get_files "ly" $score) {
      run-lilypond $file
    }
  }
}
