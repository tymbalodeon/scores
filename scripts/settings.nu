def settings [] {
  if ("settings.toml" | path exists) {
    try {
      open settings.toml
    } catch {
      open settings-default.toml
    }
  } else {
    open settings-default.toml
  }
}

export def get_pdfs_directory [] {
  return (
    settings
    | get pdfs_directory
  )
}
