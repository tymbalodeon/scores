use ./files.nu get_files
use ./files.nu get_title

# Open <score> in $EDITOR and pdf viewer, recompiling on file changes
def edit [
  search_term = "" # Search term for finding pdf(s)
] {
  let files = (get_files "ly" $search_term)

  if ($files | length) == 1 {
    let input_file = (realpath ($files | first))

    (
      ( 
        cat layout-template.kdl
        | str replace --all "[score]" $input_file
        | str replace --all "[score_directory]" ($input_file | path dirname)
        | str replace --all "[score_name]" (get_title $input_file)
      ) 
      | save score-layout.kdl
    )

    zellij --layout score-layout.kdl
  }
}
