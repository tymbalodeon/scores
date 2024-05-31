#!/usr/bin/env nu

# Search git history
export def main [
  search_term: string # The text to search for
] {
  git log -S $search_term --all
}
