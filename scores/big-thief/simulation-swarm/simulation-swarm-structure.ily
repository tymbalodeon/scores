structure_verse_one = {
  \sectionLabel "Verse"

  \repeat volta 2 {
    | s1
    | s4 s2. ^\markup \italic "...in the belly of the empty night..."
  }
}

structure_verse_two = {
  \sectionLabel "Verse"

  \repeat volta 2 {
    | s1
    | s2 s2 ^\markup \italic "...as the first little angel..."
  }
}

structure_chorus_one = {
  \sectionLabel "Chorus"

  s1 * 6 |
  s1 * 2 |
  s1 |
  \time 2/4
  s2 |
  \time 4/4
  s1 |
  s1 |
}

structure_chorus_two = {
  \sectionLabel "Chorus"

  s1 * 6 |
  \repeat volta 2 {
    s1 * 2 |
    \alternative {
      \volta 1 {
        | s1 * 2
      }

      \volta 2 {
        s1 |
        \time 2/4
        s2 |
      }
    }
  }

  \time 4/4
  s1 |
}

structure_solo_one = {
  \sectionLabel "Solo (4x)"

  \repeat volta 2 {
    s1 * 2 |
  }
}

structure_solo_two = {
  \sectionLabel "Solo (8x)"

  \repeat volta 2 {
    s1 * 2 |
  }
}

structure = {
  \structure_verse_one
  \structure_chorus_one
  \structure_verse_two
  \structure_solo_one
  \structure_verse_one
  \structure_chorus_two
  \structure_solo_two
}
