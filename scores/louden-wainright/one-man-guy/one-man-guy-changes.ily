\version "2.25.21"
verse = \chordmode {
  | e1
  | a4 b:7
  | e1

  | s1
  | a2
  | b1:7

  | a2 b:7
  | a2
  | b1:7

  | e1
  | a2
  | b1:7
}

verseTwo = {
  \verse
  | s1
}

chorus = \chordmode {
  \repeat volta 2 {
    | e2 a
    | e2 a

    \alternative {
      \volta 1 {
        | e2 a
        | e2 a
      }

      \volta 2 {
        | fs1:m
        | b1:7
      }
    }
  }

  | e2 a
  | e1
}

changes = \chords {
  \verse
  \verseTwo
  \chorus
  \verseTwo
  \chorus
}
