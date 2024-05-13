use ./files.nu get_files
use ./files.nu get_title

def score-info [
  search_term = "" # Search term for finding pdf(s)
] {
  let files = (get_files "ly" $search_term)

  if ($files | length) == 1 {
    let toml_files = (get_files "toml" (get_title ($files | first)))

    if (($toml_files | length) == 1) {
      open ($toml_files | first)
    } else {
      return
    }
  }
}
