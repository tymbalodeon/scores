\version "2.25.21"

changesIntro = \chordmode {
  | cs2.:m7
  | gs2.:m7
  | fs2.:m7
  | b2.
}

changesVerse = \chordmode {
  \repeat unfold 2 {
    | cs4.:m7 gs:m7
    | fs4.:m7 b
  }
}

changesPreChorus = \chordmode {
  | a2.
  | e2.
  | a2.
  | d4. gs:m7
}

changesChorus = \chordmode {
  | a2.
  | b2.
  | a2.
  | b2.
}

littleToNothingChanges = \chords {
  \changesIntro
  \changesVerse
  \changesPreChorus
  \changesChorus
  \changesPreChorus
  \changesVerse
  \changesPreChorus
  \changesChorus
  \changesPreChorus
  \changesIntro
}
