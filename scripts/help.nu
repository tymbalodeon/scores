(
  just --list
    --color always
    --list-heading (
      [
        "Available recipes:"
        "(run `<recipe> --help/-h` for more info)\n"
      ]
      | str join " "
    )
)
