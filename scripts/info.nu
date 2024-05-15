use ./files.nu get_files
use ./files.nu get_title

def display_array [list: record, key: string] {
  try {
    $list.$key 
    | str join ", " 
    | wrap $key
  } catch {
    ""
    | wrap $key
  }
}

def display_info [file: path, artist?: string] {
  let info = (open $file)

  if (
    not ($artist | is-empty)
  ) and (
    not (($artist | str downcase) in ($info.artist | str downcase))
  ) {
    return
  }

  return (
    $info 
    | select title
    | merge ($info | select artist)
    | merge (
        display_array $info "composers"
    ) | merge (
          display_array $info "arrangers"
    ) | merge (
          display_array $info "instrumentation"
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

  let files = if ($sort_by | is-empty) {
     $files 
  } else {
    $files 
    | sort-by $sort_by
  }

  if ($files | length) == 1 {
    return ($files | first)
  } else {
    return $files
  }
}
