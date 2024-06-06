\version "2.25.15"

changesIntro = \chordmode {
  | g1
  | d1:m
  | f1

  | c1
  | g1
  | d1:m
  | f1
}

changesVerse = \chordmode {
  | c1
  | g1
  | d1:m
  | f1
}

changesChorus = \chordmode {
  | c1

  \time 5/8

  | g4.:/b s4

  \time 4/4

  | bf1
  | d4.:m f a4:m
}

changesPostChorus = \chordmode {
  | c1
  | g1
  | bf1
  | d4.:m f a4:m
}

decideForYourselfChanges = \chords {
  \changesIntro

  \repeat unfold 4 {
    \changesVerse
    \changesChorus
    \changesPostChorus
  }

  \changesPostChorus
}
