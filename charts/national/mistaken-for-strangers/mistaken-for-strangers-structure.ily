base = {
  s1 * 4 |
}

intro = {
  \repeat volta 2 {
    \base
  }
}

verse = {
  \mark "Verse"
  \repeat volta 2 {
    s1 * 4 |
  }
}

chorus = {
  \mark "Chorus"
  s1 * 15 |
  s2. s4_\markup { \italic "Da Capo" }
}

structure = {
  \key f \major
  \time 4/4

  \intro
  \verse
  \chorus

  \bar "|."
}