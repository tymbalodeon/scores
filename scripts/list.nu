use ./files.nu get_files
use ./files.nu get_title

def list [
  search_term = "" # Search term for finding pdf(s)
] {
  (
    return (
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
      | insert pdfs {
          |item| (
            if (get_files "pdf" $item.file-name | is-empty) {
              "missing"
            } else {
              "compiled"
            }
          )
        }
      | select title pdfs
    )
  )
}
