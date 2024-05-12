# Remove pdf(s)
def clean [
  search_term?: string
] {
  let files = if ($search_term | is-empty) {
    fd --extension pdf --no-ignore
  } else {
    fd --extension pdf --no-ignore $search_term
  }

  for file in $files {
    rm $file
  }
}
