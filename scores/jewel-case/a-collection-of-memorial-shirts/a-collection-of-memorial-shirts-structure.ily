\version "2.25.15"

structure = {
  \time 2/2

  \repeat unfold 2 {
    | s1 * 2 
  }

  \sectionLabel "Verse 1"

  \repeat volta 2 {
    | s1 * 3
    | s2. s8 s8 ^\markup \italic "3x"
  }

  \repeat unfold 2 {
    | s1 * 2
  }

  \repeat unfold 2 {
    | s1 * 2 
  }

  \sectionLabel "Verse 2"

  \repeat volta 2 {
    | s1 * 3
    | s2. s8 s8 ^\markup \italic "3x"
  }

  \repeat unfold 2 {
    | s1 * 2
  }

  \sectionLabel "Chorus"

  | s1 * 12
  | s1 * 4

  \sectionLabel "Solo"

  | s1 * 3
  | s2. s8 s8 ^\markup \italic "4x"

  \repeat unfold 2 {
    | s1 * 2
  }

  \sectionLabel "Verse 3"

  \repeat volta 2 {
    | s1 * 3
    | s2. s8 s8 ^\markup \italic "3x"
  }

  \repeat unfold 2 {
    | s1 * 2
  }

  \sectionLabel "Chorus"

  | s1 * 12
  | s1 * 4

  \sectionLabel "Solo"

  | s1 * 3
  | s2. s8 s8 ^\markup \italic "4x"

  | s1 * 4

  \bar "|."
}
