changes_intro = \chordmode {
    | a1:m
    | s1 * 3
}

changes_verse = \chordmode {
  \repeat volta 3 {
    | a1:m
    | a1:m7
    | f1:maj
    | s1
  }

  | c1
  | g1
  | d1
  | d1:sus

  | d1
  | s1
}

changes_chorus_one = \chordmode {
  \repeat volta 4 {
    | f1:maj
    | s1

    \alternative {
      \volta 1,2,3 {
        | a2:m g:/b
        | c2 g:/d
      }

      \volta 4 {
        \changes_intro
      }
    }
  }
}

changes_chorus_two = \chordmode {
  \repeat volta 4 {
    | f1:maj
    | s1

    \alternative {
      \volta 1,2,3 {
        | a2:m g:/b
        | c2 g:/d
      }

      \volta 4 {
        | s4 a2.:m
        | s1
      }
    }
  }
}

changes = \chords {
  \changes_intro
  \changes_verse
  \changes_chorus_one
  \changes_verse
  \changes_chorus_two
}
