intro = \chordmode {
  | g1
  | f1
  | g1
  | c1

  | g1 * 2

}

verse = \chordmode {
  \repeat volta 2 {
    | g1 * 3
    | f1
    | c1
    | c4 g:/b a:m d:/fs

    | g1

    \alternative {
      \volta 1 {
        | s1
      }

      \volta 2 {
        | s2 g4 d:/fs
      }
    }
  }
}

chorus = \chordmode {
  | e1:m
  | s2 g4 d:/fs
  | e1:m
  | s2 e4:m d:/fs

  | g2 c
  | g2 d
  | g1
  | s1
}

bridge = \chordmode {
  | g2 a:m
  | g2:/b
  | c1

  | c4 g:/b a:m d:/fs
  | g1
}

coda = \chordmode {
  | g2 a:m
  | g2:/b
  | c1
}

changes = \chords {
  \intro
  \verse
  \chorus
  \verse
  \bridge
  \intro
  \verse
  \coda
}
