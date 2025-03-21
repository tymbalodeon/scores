\version "2.25.24"

changesIntro = \chordmode {
  | d2:maj7 s8
  | s2 s8
  | s2 s8
  | s4 s8 e4
}

changesVerse = \chordmode {
  | a2 s8
  | s4 s8 e4
  | fs2:m s8
  | s4 s8 e4

  | d2:maj7 s8
  | s4 s8 e4
  | a2 s8
  | s4 s8 e4
}

changesPreChorus = \chordmode {
  | a2 s8
  | s2 s8
  | fs2:m s8
  | s2 s8

  | cs2:m7 s8
  | s2 s8
  | g2:11 s8
  | s2 s8
}

changesChorus = \chordmode {
  | g2 s8
  | s2 s8
  | d2:/fs s8
  | s2 s8

  | f2 s8
  | s2 s8
  | e2 s8
  | e2:7 s8

  | a2:m s8
  | a2:m/g s8
  | f2 s8
  | s2 s8

  | g2 s8
  | s2 s8
  | d2:/fs s8
  | s2 s8
}

changesInstrumental = \chordmode {
  | a2 s8
  | s2 s8
  | s2 s8
  | s4 s8 e4
}

calamityGravityChanges = \chords {
  | s8 * 5 * 4 

  \repeat unfold 2 {
    \changesIntro
    \changesVerse

    \repeat volta 2 {
      \changesVerse
    }

    \changesPreChorus
  }

  \changesChorus
  \changesInstrumental

  \repeat volta 2 {
    \changesVerse
  }

  \changesPreChorus
  \changesChorus
  \changesInstrumental
}
