# Open <score> in $EDITOR and pdf viewer, recompiling on file changes
def edit [ 
  score # The score to edit
] {
  let files = (fd --extension ly $score | lines)

  if ($files | length) == 1 {
    let input_file = ($"{{ justfile_directory() }}/($files | first)")

    (
      cat layout-template.kdl 
      | str replace "score name" $score
      | str replace --all "score" $input_file
    )
  }
}
