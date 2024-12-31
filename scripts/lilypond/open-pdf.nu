#!/usr/bin/env nu

use ./files.nu get_files

# Compile pdfs
export def main [
  search_term = "" # Search term for finding pdfs
] {
  for file in (get_files "pdf" $search_term) {
    start $file
  }
}
