\version "2.25.16"

changesIntro = \chordmode {
  | a1:m
  | e1:m7
  | c1
  | f1
}

changesOne = \chordmode {
  | g1
  | s1
  | e1:m
  | s1
}

changesTwo = \chordmode {
  | c1
  | s1
  | a1:m
  | s1
  | g1
  | s1 * 3
}

changesThree = \chordmode {
  | c1
  | s1
  | a1:m
  | s1
  | f1
  | s1
}

changesBridge = \chordmode {
  | d1:m
  | s1
  | bf1
  | s1
  | c1
  | s1
  | g1
  | s1
}

changesFour = \chordmode {
  | a1:m
  | e1:m7
  | c1
  | f1
  | s1
}

changesOutro = \chordmode {
  | c1
  | s1
  | a1:m
  | s1
  | f1
}

changes = \chords {
  \changesIntro
  \changesOne
  \changesOne
  \changesTwo
  \changesOne
  \changesThree
  \changesBridge
  \changesOne
  \changesOne
  \changesFour
  \changesOutro
}
