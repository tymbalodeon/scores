key_and_time = {
  \key c \major
  \time 4/4
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
  \mark \markup \box "Verse"
  \verse
  \bar "||"
}

structure_verse = {
  \key_and_time
  \mark \markup \box "Chorus"
  \chorus
  \bar "||"
}

structure = {
  \key_and_time
  \verse
  \chorus
}
