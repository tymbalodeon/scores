key_and_time = {
  \key d \minor
  \time 4/4
}

intro_base = {
  s1
}

intro = {
  \mark \markup \box "Intro"
  \repeat unfold 2 {
    \repeat volta 2 {
      \repeat unfold 2 {
        \intro_base |
      }
    }
  }
}

verse = {
  \mark \markup \box "Verse"
  s1 * 16 |
}

chorus_base = {
  s1 * 8 |
}

chorus = {
  \mark \markup \box "Chorus"
  \repeat volta 2 {
    \chorus_base
  }
}

structure = {
  \key_and_time
  \intro
  \verse
  \chorus
}

structure_intro = {
  \key_and_time
  \mark \markup \box "Vamp"
  \intro_base
  \bar "||"
}

structure_verse = {
  \key_and_time
  \verse
  \bar "||"
}

structure_chorus = {
  \key_and_time
  \mark \markup \box "Chorus"
  \chorus_base
  \bar "||"
}
