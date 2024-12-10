#!/usr/bin/env nu

# Manage scores settings
def main [
  --edit # Open settings file in $EDITOR
  key?: string # The key to view or set
  value?: string # The new value for <key>
] {
  if $edit {
    if not ("settings.toml" | path exists) {
      cp ../settings-default.toml settings.toml
    }

    ^$env.EDITOR settings.toml

    return
  }

  let settings = try {
    open ../settings-default.toml
    | merge (open settings.toml)
  } catch {
    open ../settings-default.toml
  }

  if ($key | is-empty) {
    return $settings
  } else {
    let key = ($key | str replace --all "-" "_")

    if ($value | is-empty) {
      return (
        $settings
        | get $key
      )
    } else {
      let new_settings = (
        $settings
        | upsert $key $value
      )

      $new_settings
      | save --force settings.toml

      return $new_settings
    }
  }
}

export def get_pdfs_directory [] {
  let pdfs_directory = (main | get pdfs_directory)

  mkdir $pdfs_directory

  return $pdfs_directory
}
