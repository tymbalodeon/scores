key_and_time = {
  \key c \major
  \time 4/4
}

verse = {
  s1 * 4 |
}

chorus = {
  s1 * 4 |
}

structure_verse = {
  \key_and_time
  \verse
  \bar "||"
}

structure_chorus = {
  \key_and_time
  \chorus
  \bar "||"
}

structure = {
  \key_and_time
  \verse
  \chorus
}
