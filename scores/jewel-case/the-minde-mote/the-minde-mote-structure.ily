key_and_time = {
  \key g \major
  \time 4/4
}

intro = {
  | s1 * 4
}

verse = {
  \repeat volta 2 {
    | s1 * 8
  }
}

chorus = {
  | s1 * 4
}

structure = {
  \key_and_time
  \intro
  \verse
  \chorus
}
