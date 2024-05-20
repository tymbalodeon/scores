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

def is_match [info: record, search_term?: string, search_key?: string] {
  return (
    try {
      (
        $search_term | is-empty
      ) or  (
        let search_term = ($search_term | str downcase);
        let column = ($info | get $search_key);

        if (
          (
            $column 
            | describe --detailed 
            | get type
          ) == "list"
        ) {
          let values = (
            $column
            | each {|value| $value | str downcase}
          );

          mut is_match = false;

          for value in $values {
            if $search_term in $value {
              $is_match = true;
              break;
            }
          };

          $is_match
        } else {
          ($search_term | str downcase) in ($column | str downcase)
        }
      )
    } catch {
      return false
    }
  )
}

def display_info [
  score_file: path 
  info_file: path
  arranger?: string
  artist?: string
  composer?: string
] {
  let info = (open $info_file)

  if not (
    (is_match $info $arranger "arrangers") and (
      (
        $artist | is-empty
      ) or (
        ($artist | str downcase) in ($info.artist | str downcase)
      ) 
    ) and (is_match $info $composer "composers")
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
  --arranger: string # Limit search to an arranger
  --arrangers # Show unique arrangers for matching scores
  --artist: string # Limit search to an artist
  --artists # Show unique artists for matching scores
  --compiled # Show only scores with up-to-date compiled pdfs
  --composer: string # Limit search to a composer
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
        (
          display_info 
            $file 
            ($toml_files | first) 
            $arranger 
            $artist 
            $composer
        )
      } else if ([$arranger $artist $composer] | all {|option| $option | is-empty}) {
        {
          title: $null_display, 
          artist: $null_display, 
          composers: $null_display, 
          arrangers: $null_display, 
          instrumentation: $null_display, 
          key: $null_display, 
          time_signature: $null_display, 
          status: (get_compilation_status $file), 
          file: $file
        }
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
