use ./files.nu get_files
use ./files.nu get_title

def list [
  search_term = "" # Search term for finding pdf(s)
] {
  (
    let titles = (
      get_files "ly"
      | par-each {|file|
          get_title $file
        }
      | sort
    );

    let pdf_files = (
      $titles
      | par-each {|title| (
            if (get_files "pdf" $title | is-empty) {
              "missing"
            } else {
              "compiled"
            }
          )
        }
    );

    let titles = (
      $titles
      | par-each {|title| $title | str replace "-" " " | str title-case}
    );

    ($titles | wrap score) | merge ($pdf_files | wrap pdfs)
  )
}
