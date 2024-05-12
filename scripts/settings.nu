def settings [] {
  if ("settings.toml" | path exists) {
    try {
      open settings-default.toml | merge (open settings.toml)
    } catch {
      open settings-default.toml
    }
  } else {
    open settings-default.toml
  }
}

export def get_pdfs_directory [] -> string {
  return (
    settings
    | get pdfs_directory
  )
}
