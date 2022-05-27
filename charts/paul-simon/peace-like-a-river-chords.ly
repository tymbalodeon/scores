introShort = \chordmode {
  d1:m | s |
}

introLong = \chordmode {
  d1:m |
  \repeat unfold 5 {
    s |
  }
}

verseA = \chordmode {
  d1:m |
  \repeat unfold 2 {
    s |
  }
  g1:m | f | s |
  bf | f | bf | g:m | s |
}

verseB = \chordmode {
  d1:m |
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
  g1:m | s |
  d:m | s | s | s |
}

changes = \chords {
  \introLong
  \bar "||"
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
