#!/usr/bin/env nu

use ../environment.nu get-project-path

# Manage scores settings
def main [
  --edit # Open settings file in $EDITOR
  key?: string # The key to view or set
  value?: string # The new value for <key>
] {
  let default_settings_file = (get-project-path settings-default.toml)
  let settings_file = (get-project-path settings.toml)

  if $edit {
    if not ("settings.toml" | path exists) {
      cp $default_settings_file $settings_file
    }

    ^$env.EDITOR settings.toml

    return
  }


  let settings = try {
    open $settings_file
    | merge (open $settings_file)
  } catch {
    open $settings_file
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
      | save --force $settings_file

      return $new_settings
    }
  }
}

export def get-pdfs-directory [] {
  let pdfs_directory = (main | get pdfs_directory)

  mkdir $pdfs_directory

  return $pdfs_directory
}
