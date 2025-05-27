use settings.nu get-pdfs-directory

export def get-files [
  extension: string,
  search_term = ""
] {
  let search_directory = if ($extension == "pdf") {
    get-pdfs-directory
  } else {
    "."
  }

  (
    fd
      --exclude templates
      --extension $extension
      --no-ignore $search_term
      $search_directory
  )
  | lines
}

export def get-title [file: path] {
  $file
  | path parse
  | get stem
}

export def get-lilypond-output-path [file: path] {
  let pdfs_directory = (get-pdfs-directory)
  let title = (get-title $file)
  $"($pdfs_directory)/($title)"
}

def get-modified [file: string] {
  let metadata = (ls --long $file)

  if ($metadata | is-not-empty) {
    $metadata
    | first
    | get modified
  }
}

export def get-compilation-status [file: path] {
  let pdf_file_base = (get-lilypond-output-path $file)
  let pdf_file = $"($pdf_file_base).pdf"

  if not ($pdf_file | path exists) {
    return "missing"
  }

  let ly_modified = (get-modified $file)
  let pdf_modified = (get-modified $"($pdf_file_base).pdf")

  if ($ly_modified > $pdf_modified) {
    "outdated"
  } else {
    "compiled"
  }
}

export def get-lilypond-version [] {
  lilypond --version
  | lines
  | first
  | split row " "
  | get 2
}
