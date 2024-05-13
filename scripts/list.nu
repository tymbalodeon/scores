use ./files.nu get_files
use ./files.nu get_title

# List scores
def list [
  --missing # List only scores with missing or outdated pdfs
] {
  (
    let scores = (
      get_files "ly"
      | par-each {|file|
          get_title $file
        }
      | sort
      | wrap file-name
      | insert title {
          |item| (
            $item.file-name
            | str replace "-" " "
            | str title-case
          )
        }
      | insert status {
          |item| (
            if (get_files "pdf" $item.file-name | is-empty) {
              "missing"
            } else {
              "compiled"
            }
          )
        }
      | select title status
    );

    if $missing {
      return (
        $scores
        | filter {|score| $score.status == "missing"}
        | select title
      )
    } else {
      return $scores
    }
  )
}
