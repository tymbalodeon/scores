use ./files.nu get_files

# Remove pdf(s)
def clean [
  search_term = "" # Search term for finding pdfs
  --temporary # Clean temporary files (ly~,ily~) instead of pdfs
] {
  let files = if $temporary {
      fd --no-ignore --extension ly~ --extension ily~
      | lines
  } else {
    get_files "pdf" $search_term
  }

  for file in $files {
    rm $file
  }
}
