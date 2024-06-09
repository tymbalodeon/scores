\version "2.25.16"
key_and_time = {
  \key d \major
  \time 4/4
}

structure_verse = {
  \key_and_time
  \repeat volta 2 {
    \repeat unfold 4 {
      s1 * 2 |
    }
  }
}

structure_chorus = {
  \key_and_time
  \partial 2
  s2 |
  \repeat volta 2 {
    s1 |
    s2
    \alternative {
      \volta 1, 2, 3 {
        s2
      }
      \volta 4 {
        s2
      }
    }
  }
  \bar "||"
}

structure_end = {
  \key_and_time
  \partial 16
  s16 |
  \repeat volta 2 {
    s1 * 2 |
  }
}
