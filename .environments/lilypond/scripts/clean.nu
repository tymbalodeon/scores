#!/usr/bin/env nu

use files.nu get-files

# Remove pdfs
def main [
  search_term = "" # Search term for finding pdfs
  --temporary-files # Clean temporary files (ly~,ily~) instead of pdfs
] {
  let files = if $temporary_files {
      (
        fd
          --exclude pdfs/
          --extension error
          --extension ily~
          --extension ly~
          --extension pdf
          --no-ignore
      ) | lines
  } else {
    get-files "pdf" $search_term
  }

  for file in $files {
    rm $file
  }
}
