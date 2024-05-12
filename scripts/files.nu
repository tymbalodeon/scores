export def get_files [
  extension: string, 
  search_term = "" 
] -> list<string> {
  return (
    fd --extension $extension --no-ignore $search_term 
    | lines
  )
}

export def get_title [
  file: path
] -> string {
  return (
    $file 
    | path parse 
    | get stem
  )
}
