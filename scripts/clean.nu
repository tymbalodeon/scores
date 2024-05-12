use ./files.nu get_files

# Remove pdf(s)
def clean [
  search_term = "" # Search term for finding pdf(s)
] {
  for file in (get_files "pdf" $search_term) {
    rm $file
  }
}
