\version "2.25.24"
changes_intro = \chordmode {
    | a1:m
    | s1 * 3
}

changes_verse_one = \chordmode {
  \repeat volta 2 {
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

changes_verse_two = \chordmode {
  \repeat volta 2 {
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
  | d4 s2.
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
  \changes_verse_one
  \changes_verse_two
  \changes_chorus_one
  \changes_verse_one
  \changes_verse_two
  \changes_chorus_two
}
