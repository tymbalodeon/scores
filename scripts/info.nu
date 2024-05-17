use ./files.nu get_files
use ./files.nu get_title

def display_record [record: record, key: string] {
  try {
    $record.$key 
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
        display_record $info "composers"
    ) | merge (
          display_record $info "arrangers"
    ) | merge (
          display_record $info "instrumentation"
    ) | merge (
          $info | select key
    ) | merge (
          $info | select time_signature
    )
  )
}

def get_unique [files: list, key: string] {
  return (
    $files
    | get $key
    | uniq
    | sort
  )
}

def score-info [
  search_term = "" # Search term for finding pdfs
  --artist: string # Limit search to an artist
  --keys # Show unique keys for matching scores
  --sort-by: string # Sort results by column
  --time-signatures # Show unique time signatures for matching scores
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
    if $keys {
      get_unique $files "key"
    } else if $time_signatures {
      get_unique $files "time_signature"
    } else {
     $files 
    }
  } else {
    $files 
    | sort-by $sort_by
  }

  if $keys or $time_signatures {
    return (
      $files 
      | str join "\n"
    )
  } else if ($files | length) == 1 {
    return ($files | first)
  } else {
    return $files
  }
}
