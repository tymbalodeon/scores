# Compile pdf(s)
def open [
  search_term?: string
] {
  let files = if ($search_term | is-empty) {
    fd --extension pdf --no-ignore
  } else {
    fd --extension pdf --no-ignore $search_term
  } | lines

  for file in $files {
    start $file
  }
}

