\version "2.25.15"

structure = {
  \time 4/4

  \repeat unfold 2 {
    \repeat unfold 2 {
      | s1 
    }

    \repeat volta 2 {
      | s1
      | s2. s8 s8 ^\markup \italic "3x"
    }

    \repeat unfold 2 {
      | s1 
    }
  }

  | s1 * 6
  | s1 * 4

  \repeat unfold 2 {
    | s1 
  }

  \repeat volta 2 {
    | s1
    | s2. s8 s8 ^\markup \italic "3x"
  }

  \repeat unfold 2 {
    | s1 
  }

  | s1 * 6

  | s1 * 3
  | s2. s8 s8 ^\markup \italic "4x"

  | s1 * 2

  \bar "|."
}
