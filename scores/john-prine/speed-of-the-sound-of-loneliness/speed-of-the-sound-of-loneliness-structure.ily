key_and_time = {
  \key g \major
  \time 4/4
}

verse_one = {
  \repeat volta 2 {
    | s1 * 4
  }
}

chorus = {
  \repeat volta 2 {
    | s1 * 4
  }
}

structure = {
  \key_and_time

  \sectionLabel "Verse"
  \verse_one

  \sectionLabel "Chorus"
  \chorus
}

last_chorus = {
  \sectionLabel "Final Chorus"
  \repeat volta 2 {
    | s1 * 4
  }

  \repeat volta 2 {
    | s1 * 2
  }
}
