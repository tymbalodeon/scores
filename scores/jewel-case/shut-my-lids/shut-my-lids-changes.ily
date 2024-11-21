\version "2.25.20"

changesRiff = \chordmode {
  | a2:m
  | s2
  | bf2
  | s2
}

changesVerse = \chordmode {
  | a2:m
  | s2
  | s2
  | s2

  | bf2
  | s2
  | s2
  | s2
}

changesChorus = \chordmode {
  | f2:maj7
  | s2
  | a2:m
  | a2:m9

  | g2
  | s2
  | e2
  | s2
}

changesBridge = \chordmode {
  | a2:m
  | s2
  | d2:m
  | s2

  | g2
  | s2
  | c2
  | s2
}

changesRiffA = \chordmode {
  | a2:m
  | s2
  | s2
  | s2

  \repeat unfold 4 {
    | s2
  }
}

changesRiffB = \chordmode {
  | bf2
  | s2
  | s2
  | s2

  \repeat unfold 4 {
    | s2
  }
}

changesOutro = \chordmode {
  | f2:maj7
  | s2
  | a2:m
  | a2:m9

  | g2
  | s2
  | e2:m
  | s2
}

shutMyLidsChanges = \chords {
  \changesRiff
  \changesVerse
  \changesRiff
  \changesVerse
  \changesChorus
  \changesChorus

  | f2:maj7
  | s2
  | s2
  | s2

  \changesBridge
  \changesRiff
  \changesRiffA
  \changesRiffB
  \changesOutro
  \changesOutro
  \changesOutro
}
