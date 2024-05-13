use ./settings.nu get_pdfs_directory

export def get_files [
  extension: string,
  search_term = ""
] {
  let search_directory = if ($extension == "pdf") {
    get_pdfs_directory
  } else {
    "./"
  }

  return (
    fd --extension $extension --no-ignore $search_term $search_directory
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
