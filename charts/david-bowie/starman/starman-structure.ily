key_and_time = {
  \key f \major
  \time 4/4
}

intro = {
  s1 * 8 |
}

verse = {
  s1 * 7 |
  s1 * 8 |
}

chorus = {
  s1 * 8 |
  s1 * 3 |
}

solo = {
  s1 * 7 |
}

structure_intro = {
  \key_and_time
  \repeat volta 2 {
    \intro
  }
}

structure_verse = {
  \key_and_time
  \repeat volta 2 {
    s1 * 6 |
    \alternative {
      \volta 1 { s1 }
      \volta 2 { s1 * 2 }
    }
  }
  \bar "||"
}

structure_chorus = {
  \key_and_time
  \repeat volta 2 {
    s1 * 4 |
  }
  s1 * 3 |
  \bar "||"
}

structure_solo = {
  \key_and_time
  s1 * 4 |
  \bar "||"
  s1 * 3 |
  \bar "||"
}

structure = {
  \key_and_time
  \intro
  \verse
  \chorus
  s1 * 7 |
  \verse
  \repeat unfold 2 {
    \chorus
  }
  s1 * 4 |
  \repeat volta 2 {
    s1 * 4 |
  }
}
