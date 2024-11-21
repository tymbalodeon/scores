\version "2.25.20"
key_and_time = {
  \key c \major
}

structure_vamp = {
  \key c \major
  s1 |
  \bar "||"
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
  \bar "||"
  s1_\markup {
    \italic {
      "1st verse only"
    }
  } |
  \bar "||"
  s1 * 3 |
  \bar "||"
}

structure_pre_chorus = {
  \key_and_time
  s1 * 9 |
  \bar "||"
}

structure_chorus = {
  \key_and_time
  s1 * 11 |
  \codaMark \default
  s1 * 2 |
  \bar "||"
}

structure_coda = {
  \key_and_time
  s1 * 10|
  \bar "||"
}
