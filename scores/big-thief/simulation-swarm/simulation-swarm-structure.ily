key_signature = {
  \key df \major
}

structure_verse = {
  \key_signature
  \repeat volta 2 {
    s1 * 2 |
  }
}

structure_chorus_one = {
  \key_signature
  s1 * 6 |
  s1 * 2 |
  s1 |
  \time 2/4
  s2 |
  \time 4/4
  s1 |
  s1 |
  \bar "||"
}

structure_chorus_two = {
  \key_signature
  s1 * 6 |
  \repeat volta 2 {
    s1 * 2 |
    \alternative {
      \volta 1 {
        | s1 * 2
      }

      \volta 2 {
        s1 |
        \time 2/4
        s2 |
      }
    }
  }

  \time 4/4
  s1 |
  \bar "||"
}

structure_solo = {
  \key_signature
  \repeat volta 2 {
    s1 * 2 |
  }
}
