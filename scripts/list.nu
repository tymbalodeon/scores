use ./files.nu get_compilation_status
use ./files.nu get_files
use ./files.nu get_title

def filter_by_status [scores: table, status: string] {
  return (
    $scores
    | filter {|score| $score.status == $status}
    | select title
  )
}

# List scores
def list [
  --compiled # List only scores with up-to-date compiled pdfs
  --missing # List only scores with missing pdfs
  --outdated # List only scores with outdated pdfs
] {
  (
    let scores = (
      get_files "ly"
      | wrap file
      | insert file-name {
          |item| get_title $item.file
        }
      | sort-by file-name
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
              get_compilation_status $item.file
            }
          )
        }
      | select title status
    );

    if $compiled {
      return (filter_by_status $scores "compiled")
    } else if $missing {
      return (filter_by_status $scores "missing")
    } else if $outdated {
      return (filter_by_status $scores "outdated")
    } else {
      return $scores
    }
  )
}
