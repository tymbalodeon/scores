base = {
  s1 * 4 |
}

intro = {
  \base
}

verse = {
  \mark "Verse"
  \repeat unfold 8 {
    \base
  }
}

structure = {
  \key d \major
  \time 4/4

  \intro
  \verse
}
