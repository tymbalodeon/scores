# Open <score> in $EDITOR and pdf viewer, recompiling on file changes
def edit [ 
  score # The score to edit
] {
  let files = (fd --extension ly $score | lines)

  if ($files | length) == 1 {
    let input_file = ($"(pwd)/($files | first)")

    (
      cat layout-template.kdl 
      | str replace --all "[score]" $input_file
      | str replace --all "[score_directory]" ($input_file | path dirname)
      | str replace --all "[score_name]" $score
    ) | save score-layout.kdl

    zellij --layout score-layout.kdl
  }
}
