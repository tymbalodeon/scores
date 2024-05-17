use ./files.nu get_files
use ./files.nu get_title

def display_record [record: record, key: string] {
  try {
    return (
      $record 
      | get $key
      | str join ", " 
      | wrap $key
    )
  } catch {
    return (
      ""
      | wrap $key
    )
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
    | filter {|item| not ($item | is-empty)}
    | sort
  )
}

def score-info [
  search_term = "" # Search term for finding pdfs
  --arrangers # Show unique arrangers for matching scores
  --artist: string # Limit search to an artist
  --artists # Show unique artists for matching scores
  --composers # Show unique composers for matching scores
  --instruments # Show unique instruments for matching scores
  --keys # Show unique keys for matching scores
  --major # Show scores in a major key only
  --minor # Show scores in a minor key only
  --sort-by: string # Sort results by column
  --time-signatures # Show unique time signatures for matching scores
  --titles # Show unique titles for matching scores
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

  let files = if $major {
    $files 
    | filter {|file| "major" in $file.key}
  } else if $minor {
    $files 
    | filter {|file| "minor" in $file.key}
  } else {
    $files
  }

  let files = if ($sort_by | is-empty) {
    if $arrangers {
      get_unique $files "arrangers"
    } else if $artists {
      get_unique $files "artist"
    } else if $composers {
      get_unique $files "composers"
    } else if $instruments {
      get_unique $files "instrumentation"
      | each {
          |instrumentation| 

          $instrumentation 
          | split row ", "
        } 
      | reduce {|iterator, accumulator| $iterator ++ $accumulator}
      | uniq
      | sort
    } else if $keys {
      get_unique $files "key"
    } else if $time_signatures {
      get_unique $files "time_signature"
    } else if $titles {
      get_unique $files "title"
    } else {
     $files 
    }
  } else {
    $files 
    | sort-by $sort_by
  }

  if (
    $arrangers
    or $artists
    or $composers 
    or $instruments 
    or $keys 
    or $time_signatures
    or $titles
  ) {
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
