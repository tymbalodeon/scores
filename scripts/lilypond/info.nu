#!/usr/bin/env nu

use ./files.nu get-compilation-status
use ./files.nu get-files
use ./files.nu get-title

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

def matches_all_filters [
  info: record
  arranger?: string
  artist?: string
  composer?: string
  instrument?: string
  key?: string
  time_signature?: string
] {
  return (
    (is_match $info $arranger "arrangers") and (
      (
        $artist | is-empty
      ) or (
        ($artist | str downcase) in ($info.artist | str downcase)
      )
    ) and (is_match $info $composer "composers") and (
      is_match $info $instrument "instrumentation"
    ) and (is_match $info $key "key") and (
      is_match $info $time_signature "time_signature"
    )
  )
}

def display_info [
  score_file: path
  info_file: path
  arranger?: string
  artist?: string
  composer?: string
  instrument?: string
  key?: string
  time_signature?: string
] {
  let info = (open $info_file)

  if not (
    matches_all_filters
      $info
      $arranger
      $artist
      $composer
      $instrument
      $key
      $time_signature
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
    | merge (get-compilation-status $score_file | wrap status)
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

def parse_lilypond_value [value: string] {
  $value
  | parse "{key} = {value}"
  | first
  | get value
  | str replace --all '"' ""
  | str replace --all '\' ""
  | str trim
}

def get_lilypond_value [file: path, pattern: string] {
  return (
    let value = (
      rg $"\\b($pattern)\\s=" $file
      | lines
    );

    if ($value | is-empty) {
      $null_display
    } else {
      parse_lilypond_value ($value | first)
    }
  )
}

def main [
  search_term = "" # Search term for finding pdfs
  --arranger: string # Limit search to an arranger
  --arrangers # View unique arrangers for matching scores
  --artist: string # Limit search to an artist
  --artists # View unique artists for matching scores
  --compiled # View only scores with up-to-date compiled pdfs
  --composer: string # Limit search to a composer
  --composers # View unique composers for matching scores
  --instrument: string # Limit search to an instrument
  --instruments # View unique instruments for matching scores
  --key: string # Limit search to a key
  --keys # View unique keys for matching scores
  --major # View scores in a major key only
  --minor # View scores in a minor key only
  --missing # View only scores with missing pdfs
  --missing-files # [for composing with other functions] View paths of scores missing pdfs
  --missing-info # View only scores with missing info toml files
  --outdated # View only scores with outdated pdfs
  --reject: string # Reject specified columns [format: "column1,column2"]
  --select: string # View only specified columns [format: "column1,column2"]
  --sort-by: string # Sort results by column
  --time-signature: string # Limit search to a time signature
  --time-signatures # View unique time signatures for matching scores
  --titles # View unique titles for matching scores
] {
  let missing = if $missing_files {
    true
  } else {
    $missing
  }

  let files = (
    (get-files "ly" $search_term)
    | each {
      |file|

      let toml_files = (get-files "toml" (get-title $file))

      if ($toml_files | is-empty) {
        if $missing_info {
          return $file
        } else {
          let title_found = get_lilypond_value $file "title"

          let artist_found = (
            $file
            | path dirname
            | path dirname
            | path parse
            | get stem
            | str replace --all "-" " "
            | str title-case
          )

          let composers_found = get_lilypond_value $file "composer"
          let arrangers_found = get_lilypond_value $file "arranger"

          let instrumentation_found = (
            rg \binstrumentName $file
            | lines
            | each {|line| parse_lilypond_value $line}
            | str join ", "
            | str downcase
          )

          let info = {
            title: $title_found,
            artist: $artist_found,
            composers: $composers_found,
            arrangers: $arrangers_found,
            instrumentation: $instrumentation_found,
            key: $null_display,
            time_signature: $null_display,
            status: (get-compilation-status $file),
            file: $file
          }

          if not (
            matches_all_filters
              $info
              $arranger
              $artist
              $composer
              $instrument
              $key
              $time_signature
          ) {
            return
          }

          return $info
        }
      } else if not $missing_info {
        return (
          display_info
            $file
            ($toml_files | first)
            $arranger
            $artist
            $composer
            $instrument
            $key
            $time_signature
        )
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

  let $files = if ($select | is-empty) {
    $files
  } else {
    $files
    | select ...($select | str replace --all " " "" | split row ",")
    | filter {|score| not ($score | values | all {|value| $value == $null_display})}
  }

  let $files = if ($reject | is-empty) {
    $files
  } else {
    $files
    | reject ...($reject | str replace --all " " "" | split row ",")
    | filter {|score| not ($score | values | all {|value| $value == $null_display})}
  }

  if (
    $arrangers
    or $artists
    or $composers
    or $instruments
    or $keys
    or $missing_info
    or $time_signatures
    or $titles
  ) {
    return ($files | to text)
  } else if $missing_files {
    $files | get file
  } else if ($files | length) == 1 {
    return ($files | first)
  } else {
    return ($files | table --index false)
  }
}
