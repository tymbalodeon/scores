use ./files.nu get_compilation_status
use ./files.nu get_files
use ./files.nu get_title

const null_display = "----"

def display_record [record: record, key: string] {
  try {
    let value = $record | get $key

    if ($value | is-empty) {
      return (
        $null_display 
        | wrap $key
      )
    } else {
      return (
        $value 
        | str join ", " 
        | wrap $key
      )
    }
  } catch {
    return (
      $null_display
      | wrap $key
    )
  }
}

def display_info [score_file: path info_file: path, artist?: string] {
  let info = (open $info_file)

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
    | merge (display_record $info "composers")
    | merge (display_record $info "arrangers")
    | merge (display_record $info "instrumentation")
    | merge (display_record $info "key")
    | merge (display_record $info "time_signature")
    | merge (get_compilation_status $score_file | wrap status)
    | merge ($score_file | wrap file)
  )
}

def get_unique [files: list, key: string] {
  return (
    $files
    | get $key
    | uniq
    | filter {|item| $item != $null_display}
    | sort
  )
}

def filter_by_status [scores: table, status: string] {
  return ($scores | filter {|score| $score.status == $status})
}

def score-info [
  search_term = "" # Search term for finding pdfs
  --arrangers # Show unique arrangers for matching scores
  --artist: string # Limit search to an artist
  --artists # Show unique artists for matching scores
  --compiled # Show only scores with up-to-date compiled pdfs
  --composers # Show unique composers for matching scores
  --instruments # Show unique instruments for matching scores
  --keys # Show unique keys for matching scores
  --major # Show scores in a major key only
  --minor # Show scores in a minor key only
  --missing # Show only scores with missing pdfs
  --outdated # Show only scores with outdated pdfs
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
        display_info $file ($toml_files | first) $artist
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
    } else if $compiled {
      filter_by_status $files "compiled"
    } else if $composers {
      get_unique $files "composers"
    } else if $instruments {
      get_unique $files "instrumentation"
      | each {
          |instrumentation|

          $instrumentation | split row ", "
        }
      | reduce {|iterator, accumulator| $iterator ++ $accumulator}
      | uniq
      | sort
    } else if $keys {
      get_unique $files "key"
    } else if $missing {
      filter_by_status $files "missing"
    } else if $outdated {
      filter_by_status $files "outdated"
    } else if $time_signatures {
      get_unique $files "time_signature"
    } else if $titles {
      get_unique $files "title"
    } else {
     $files
    }
  } else {
    $files | sort-by $sort_by
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
    return ($files | str join "\n")
  } else if ($files | length) == 1 {
    return ($files | first)
  } else {
    return $files
  }
}
