use ./files.nu get_files
use ./files.nu get_title

def display_array [list: list<string>, key: string] {
  return (
    $list 
    | str join ", " 
    | wrap $key
  )
}

def display_info [file: path, match_artist?: string] {
  let info = (open $file)
  let arrangers = ($info.arrangers)

  return (
    $info 
    | select title
    | merge ($info | select artist)
    | merge (
        display_array $info.composers "composers"
    ) | merge (
          display_array $info.arrangers "arrangers"
    ) | merge (
          display_array $info.instrumentation "instrumentation"
    ) | merge (
          $info | select key
    ) | merge (
          $info | select time_signature
    )
  )
}

def score-info [
  search_term = "" # Search term for finding pdf(s)
  --artist: string # Limit search to an artist
  --sort-by: string # Sort results by column
] {
  let files = (
    (get_files "ly" $search_term) 
    | each {
      |file| 

      let toml_files = (get_files "toml" (get_title $file))

      if (($toml_files | length) == 1) {
        display_info ($toml_files | first) $artist
      }
    } 
  )

  if ($sort_by | is-empty) {
    return $files 
  } else {
    return (
      $files 
      | sort-by $sort_by
    )
  }
}
