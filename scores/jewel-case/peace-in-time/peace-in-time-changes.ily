\version "2.25.20"

changesIntro = \chordmode {
  | a1
  | s4 d4:maj11+/a d2
  | a2 d8. s a8
  | s1
}

changesVerse = \chordmode {
  \repeat unfold 3 {
    | a2 d
  }

  | a1
}

changesChorus = \chordmode {
  | cs2:m fs:m
  | e1
  | d2 a
  | fs1:m
  | e1
}

changesRiff = \chordmode {
  | a1
  | e1
}

changesSoloRiff = \chordmode {
  | R1
  | s1
}

changesBridge = \chordmode {
  | g2 d
  | a2:m7 c
  | e1:m
  | e1
}

peaceInTimeChanges = \chords {
  \repeat unfold 2 {
    \changesIntro
    \changesVerse
  }

  \changesChorus
  \changesRiff
  \changesSoloRiff
  \changesBridge
  \changesIntro
  \changesVerse
}
