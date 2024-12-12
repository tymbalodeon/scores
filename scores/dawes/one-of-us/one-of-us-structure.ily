\version "2.25.21"
key_and_time = {
  \key e \major
  \time 4/4
}

structure_verse = {
  \key_and_time
  s1 * 8 |
  \bar "||"
}

structure_chorus = {
  \key_and_time
  \repeat volta 2 {
    s1 * 2 |
    \alternative {
      \volta 1 {
        s1 * 2 |
      }
      \volta 2 {
        s1 * 2 |
      }
    }
  }
  \bar "||"
}
