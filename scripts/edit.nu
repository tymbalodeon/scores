use ./compile.nu compile-score
use ./files.nu get_files
use ./files.nu get_lilypond_output_path
use ./files.nu get_title
use ./open.nu open-pdf

# Open <score> in $EDITOR and pdf viewer, recompiling on file changes
def edit [
  search_term = "" # Search term for finding pdfs
] {
  let files = (get_files "ly" $search_term)

  if ($files | length) == 1 {
    let input_file = (realpath ($files | first))
    let title = (get_title $input_file)

    (
      (
        cat zellij-layout-template.kdl
        | str replace --all "[score]" $input_file
        | str replace --all "[score_directory]" ($input_file | path dirname)
        | str replace --all "[score_name]" $title
        | str replace --all "[output]" (get_lilypond_output_path $input_file)
      )
      | save --force score-layout.kdl
    )

    compile-score $input_file --is-file
    open-pdf $title
    zellij --layout score-layout.kdl
    rm score-layout.kdl
  }
}
