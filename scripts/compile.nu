# Compile pdf(s)
def compile [
  search_term?: string
] {
  let files = if ($search_term | is-empty) {
    fd --extension ly --no-ignore
  } else {
    fd --extension ly --no-ignore $search_term
  }

  for file in $files {
    lilypond --include helpers $file
  }
}

