use ./files.nu get_files

# Compile pdfs
export def open_pdf [
  search_term = "" # Search term for finding pdfs
] {
  for file in (get_files "pdf" $search_term) {
    start $file
  }
}
