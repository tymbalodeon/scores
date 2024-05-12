use ./files.nu get_files

# Compile pdf(s)
def open [
  search_term = "" # Search term for finding pdf(s)
] {
  for file in (get_files "pdf" $search_term) {
    start $file
  }
}

