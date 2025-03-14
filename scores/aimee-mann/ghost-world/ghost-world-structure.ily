\version "2.25.24"
key_signature = {
  \key e \major
}

structure_hits = {
  \key_signature
  s1 * 2 |
  \bar "||"
}

structure_verse = {
  \key_signature
  s1 * 10 |
  \bar "||"
}

structure_chorus = {
  \key_signature
  \repeat volta 2 {
    s1 * 6 |
    \codaMark \default
    s1 * 3 |
    \bar "|"
    \alternative {
      \volta 1 {
        s1 * 2|
        \bar "||"
      } \volta 2 {
        s1 |
      }
    }
  }
  \bar "||"
}

structure_bridge =  {
  \key_signature
  s1 * 5 |
  \time 2/4
  s2 |
  \bar "||"
}

structure_coda = {
  \key_signature
  s1 * 8 |
  \repeat volta 3 {
    s1 * 2 |
  }
}
