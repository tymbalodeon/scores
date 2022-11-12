\key_signature = {
  \key df \major
}

structure_verse = {
  \key_signature
  s1 * 2 |
  \bar "||"
}

structure_chorus = {
  \key_signature
  s1 * 6 |
  \repeat volta 2 {
    s1 * 2 |
  }
  s1 |
  \time 2/4
  s2 |
  \time 4/4
  s1 |
  \codaMark \default
  s1 |
  \bar "||"
}

structure_solo = {
  \key_signature
  s1 * 4 |
  \bar "||"
}
