use ./files.nu get_files
use ./files.nu get_title

# Compile pdf(s)
def compile [
  search_term = "" # Search term for finding pdf(s)
] {
  mkdir "pdfs"

  for file in (get_files "ly" $search_term) {
    let title = (get_title $file)
    lilypond --include helpers --output $"./pdfs/($title)" $file
  }
}
