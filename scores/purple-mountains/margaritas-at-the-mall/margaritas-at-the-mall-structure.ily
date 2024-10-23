\version "2.25.19"
structure_intro = {
  | s1 * 4
}

structure_verse = {
  \repeat volta 2 {
    | s1 ^\markup \bold \box "3x"
    | s1 * 3
  }

  | s1 * 6
}

structure_chorus_one = {
  \repeat volta 4 {
    | s1 * 2

    \alternative {
      \volta 1,2,3 {
        | s1 * 2
      }

      \volta 4 {
        | s1
      }
    }
  }

  | s1 * 3
}

structure_chorus_two = {
  \repeat volta 4 {
    | s1 * 2

    \alternative {
      \volta 1,2,3 {
        | s1 * 2
      }

      \volta 4 {
        | s1 * 2
      }
    }
  }
}

structure = {
  \structure_intro
  \structure_verse
  \structure_verse
  \structure_chorus_one
  \structure_verse
  \structure_verse
  \structure_chorus_two

  \bar "|."
}
