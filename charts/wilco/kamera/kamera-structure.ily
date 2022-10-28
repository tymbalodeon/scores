intro = {
  s1 * 4 |
}

verse = {
  \repeat volta 2 {
    s1 * 19
    s2. s4_\markup { \italic "Da Capo" }
  }
}

outro = {
  \repeat volta 2 {
    s1 |
  }
  s1 * 2 |
}

structure = {
  \key d \major
  \time 4/4

  \intro
  \verse
  \outro

  \bar "|."
}
