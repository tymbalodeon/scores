key_and_time = {
  \key c \major
}

structure_intro = {
  \key_and_time
  \repeat volta 2 {
    s1 * 10 |
  }
  \alternative {
    \volta 1 {
      \time 2/4
      s2 |
      \time 4/4
      s1 * 2 |
    }
    \volta 2 {
      s1 * 3|
    }
  }
  \bar "||"
}

structure_verse = {
  \key_and_time
  \repeat volta 2 {
    s1 * 3 |
  }
  s1 * 3 |
  \repeat volta 2 {
    s1^\markup {
      \italic {
        "1st verse only"
      }
    } |
  }
  s1 * 3 |
  \bar "||"
}

structure_pre_chorus = {
  \key_and_time
  s1 * 8 |
  \bar "||"
}

structure_chorus = {
  \key_and_time
  s1 * 14 |
  \bar "||"
}
