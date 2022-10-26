intro = {
  \mark "Intro"
  \repeat unfold 2 {
    \repeat volta 2 {
      s1 * 2 |
    }
  }
}

verse = {
  \mark "Verse"
  \repeat volta 2 {
    s1 * 8 |
  }
}

chorus = {
  \mark "Chorus"
  \repeat volta 2 {
    s1 * 8 |
  }
}

structure = {
  \key d \minor
  \time 4/4

  \intro
  \verse
  \chorus
}
