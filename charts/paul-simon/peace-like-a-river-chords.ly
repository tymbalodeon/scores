introShort = \chordmode {
  \repeat volta 2 {
    d1.:m |
  }
}

introLong = \chordmode {
  \repeat volta 6 {
    d1.:m |
  }
}

verseA = \chordmode {
  d1.:m |
  \repeat unfold 2 {
    s |
  }
  g1.:m | f | s |
  bf | f | bf | g:m | s |
}

verseB = \chordmode {
  d1.:m |
  \repeat unfold 3 {
    s |
  }
}

verseC = \chordmode {
  c/e | f | s |
  g:m | s | f:maj7 | s |
  c/e | s | d:m | s |
  g:m | s | f:maj7 | s |
  c | s | d:m | s |
}

instrumental = \chordmode {
  g1.:m | s |
  d:m | s | s | s |
}

changes = \chords {
  \introLong
  \verseA
  \verseB
  \bar "||"
  \verseA
  \verseC
  \bar "||"
  \instrumental
  \bar "||"
  \introShort
}
