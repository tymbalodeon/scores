\version "2.25.21"

aCollectionOfMemorialShirtsStructure = {
  \numericTimeSignature
  \time 4/4

  \repeat unfold 2 {
    | s1 * 2

    \repeat unfold 3 {
      | s1 * 2
    }

    | s1 * 2
  }

  | s1 * 8

  \repeat volta 2 {
    | s1 * 4
  }

  | s1 * 2

  \repeat unfold 3 {
    | s1 * 2
  }

  | s1 * 2

  | s1 * 8

  \repeat volta 2 {
    | s1 * 4
  }

  | s1 * 2

  \bar "|."
}
