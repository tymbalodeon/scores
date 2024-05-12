# Search available `just` commands interactively, or by <regex>
def find [
  search_term?: string # Regex pattern to match
] {
  if ($search_term | is-empty) {
    (
      just --list
      | fzf
    )
  } else {
    (
      just
      | grep --color=always --extended-regexp $search_term
    )
  }
}
