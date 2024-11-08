use ./settings.nu get_pdfs_directory

export def get_files [
  extension: string,
  search_term = ""
] {
  let search_directory = if ($extension == "pdf") {
    get_pdfs_directory
  } else {
    "../"
  }

  return (
    fd --exclude templates/ --extension $extension --no-ignore $search_term $search_directory
    | lines
  )
}

export def get_title [
  file: path
] {
  return (
    $file
    | path parse
    | get stem
  )
}

export def get_lilypond_output_path [
  file: path
] {
  let pdfs_directory = (get_pdfs_directory)
  let title = (get_title $file)

  return ($"($pdfs_directory)/($title)")
}

export def get_compilation_status [
  file: path
] {
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

  let pdf_file_base = (get_lilypond_output_path $file)
  let pdf_file = $"($pdf_file_base).pdf"

  if ($pdf_file | path exists) {
    let ly_modified = (get_modified $file)
    let pdf_modified = (get_modified $"($pdf_file_base).pdf")

    if ($ly_modified > $pdf_modified) {
      return "outdated"
    } else {
      return "compiled"
    }
  } else {
    return "missing"
  }
}

export def get_lilypond_version [] {
  lilypond --version
  | lines
  | first
  | split row " "
  | get 2
}
