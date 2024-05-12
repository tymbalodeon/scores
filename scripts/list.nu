use ./files.nu get_files
use ./files.nu get_title

def list [
  search_term = "" # Search term for finding pdf(s)
] {
  (
    (get_files "ly")
    | each {|file|
        (
          get_title $file
          | str replace "-" " "
          | str title-case
        )
      }
    | sort
    | str join "\n"
  )
}
