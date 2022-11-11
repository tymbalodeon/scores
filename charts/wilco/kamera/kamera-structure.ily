key_and_time = {
  \key d \major
  \time 4/4
}

structure_vamp = {
  \key_and_time
  \mark \markup \box "Vamp"
  s1 |
  \bar "||"
}

structure_verse = {
  \key_and_time
  \mark \markup \box "Verse"
  s1 * 20 |
  \bar "||"
}

structure_outro = {
  \key_and_time
  \mark \markup \box "Outro"
  \repeat volta 2 {
    s1 |
  }
  s1 * 2 |
  \bar "||"
}
