(
  fd --extension ly
  | each {|file|
    (
      $file
      | path basename
      | str trim
      | str replace ".ly" ""
      | str replace "-" " "
      | str title-case
    )
  } | sort
  | str join "\n"
)
