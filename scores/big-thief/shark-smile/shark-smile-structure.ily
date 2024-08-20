\version "2.25.17"
key_signature = {
  \key a \major
}

structure_intro = {
  \key_signature
  s1 |
  \bar "||"
}

structure_verse = {
  \repeat volta 2 {
    \key_signature
    s1 * 5 |
    \codaMark \default
    \alternative {
      \volta 1 {
        s1 * 3 |
        \bar "||"
      }
      \volta 2 {
        s1 * 3 |
      }
    }
  }
  \bar "||"
}

structure_chorus = {
  \key_signature
  \repeat volta 2 {
    s1 * 4 |
  }
}

structure_bridge = {
  \key_signature
  s1 * 2 |
  \time 2/4
  s2 |
  \time 4/4
  s1 * 6 |
  \bar "||"
}
