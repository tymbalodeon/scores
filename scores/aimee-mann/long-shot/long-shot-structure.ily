\version "2.25.22"
key_signature = {
  \key e \major
}

structure_verse = {
  \key_signature
  s1 * 8 |
  \bar "||"
}

structure_end = {
  \key_signature
  \repeat volta 2 {
    s1 * 4 |
  }
}
