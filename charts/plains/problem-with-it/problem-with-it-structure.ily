key_and_time = {
  \key bf \major
  \time 4/4
}

structure_verse = {
  \key_and_time
  \mark \markup \box "Verse"
  s1 * 8 |
  \bar "||"
}

structure_chorus = {
  \key_and_time
  \mark \markup \box "Chorus"
  s1 * 4 |
  \bar "||"
}
