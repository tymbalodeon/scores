key_and_time = {
  \key c \major
}

structure_verse = {
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

structure_chorus = {
  \key_and_time
  \repeat volta 4 {
    s1 * 2 |
    \alternative {
      \volta 1,2 {
        s1 |
      }
      \volta 3 {
        s1 * 2 |
      }
      \volta 4 {
        s1 |
      }
    }
  }
  s1 * 16 |
  \bar "||"
}

