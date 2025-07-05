#!/usr/bin/env nu

use ./files.nu get-files

# Compile pdfs
export def main [
  search_term = "" # Search term for finding pdfs
] {
  for file in (get-files "pdf" $search_term) {
    start $file
  }
}
