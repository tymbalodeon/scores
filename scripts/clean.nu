use ./files.nu get_files

# Remove pdfs
def clean [
  search_term = "" # Search term for finding pdfs
  --temporary-files # Clean temporary files (ly~,ily~) instead of pdfs
] {
  let files = if $temporary_files {
      fd --exclude pdfs/ --extension ily~ --extension ly~ --extension pdf --no-ignore
      | lines
  } else {
    get_files "pdf" $search_term
  }

  for file in $files {
    rm $file
  }
}
