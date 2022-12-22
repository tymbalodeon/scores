key_and_time = { \key c \major
  \time 4/4
}

intro = {
  s1 * 4 |
}

verse = {
  \repeat volta 2 {
    s1 * 6 |
    \alternative {
      \volta 1 { s1 }
      \volta 2 { s1 * 2 }
    }
  }
}

chorus = {
  \repeat volta 2 {
    s1 * 4 |
  }
  s1 * 3 |
}

solo = {
  s1 * 4|
}

structure_intro = {
  \key_and_time
  \repeat volta 2 {
    \intro
  }
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

structure_solo = {
  \key_and_time
  \solo
  \bar "||"
}

structure = {
  \key_and_time
  \intro
  \verse
  \chorus
}
