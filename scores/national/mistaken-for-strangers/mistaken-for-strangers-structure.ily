\version "2.25.22"
key_signature = {
  \key f \major
}

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
  \repeat unfold 2 {
    \base
  }
  \repeat volta 2 {
    \base
  }
}

chorus = {
  \mark "Chorus"
  s1 * 15 |
  s2. s4_\markup { \italic "Da Capo" }
}

structure = {

  \intro
  \verse
  \chorus

  \bar "|."
}

structure_verse = {
  \key_signature
  \base
  \bar "||"
}

structure_chorus = {
  \key_signature
  s1 * 16 |
  \bar "||"
}
