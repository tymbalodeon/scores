# Search available `just` commands interactively, or by <regex>
def find [
  regex?: string # Regex pattern to match
] {
  if ($regex | is-empty) {
    just --list | fzf
  } else {
    just | grep --color=always --extended-regexp $regex
  }
}

