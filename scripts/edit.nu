use ./compile.nu compile-score
use ./files.nu get_files
use ./files.nu get_lilypond_output_path
use ./files.nu get_title
use ./info.nu score_info
use ./open.nu open_pdf

# Open <score> (or --info file) in $EDITOR and pdf viewer, recompiling on file changes
def edit [
  search_term = "" # Search term for finding scores
  --info # Edit info toml for score
] {
  let files = (get_files "ly" $search_term)

  if ($files | length) == 1 {
    let input_file = (realpath ($files | first))
    let title = (get_title ($files | first))

    if $info {
      let toml_files = (get_files "toml" $title)

      let toml_file = if ($toml_files | is-empty) {
        let path = ($files | first | path parse)

        let toml_file = $"($path | get parent | path join ($path | get stem)).toml"

        echo (
          score_info $title
          | reject file status
        ) | save $toml_file

        $toml_file
      } else {
        $toml_files | first
      }

      compile-score $input_file --is-file
      open_pdf $title
      ^$env.EDITOR $toml_file

      return
    }

    (
      cat zellij-layout-template.kdl
      | str replace --all "[score]" $input_file
      | str replace --all "[score_directory]" ($input_file | path dirname)
      | str replace --all "[score_name]" $title
      | str replace --all "[output]" (get_lilypond_output_path $input_file)
    ) | save --force score-layout.kdl

    compile-score $input_file --is-file
    open_pdf $title

    do --ignore-errors {
      zellij delete-session $title
    }

    zellij --layout score-layout.kdl --session $title
    rm score-layout.kdl
  }
}
