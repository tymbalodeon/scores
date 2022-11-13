key_and_time = {
  \key c \major
}

base = {
  s1 * 4 |
}

verse = {
  \base
}

chorus = {
  \base
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
