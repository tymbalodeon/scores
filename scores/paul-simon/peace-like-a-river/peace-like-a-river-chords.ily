\version "2.25.16"
introShort = \chordmode {
  d1.:m | s |
}

introLong = \chordmode {
  \repeat volta 3 {
    d1.:m | s |
  }
}

verseA = \chordmode {
  \parenthesize d1.:m |
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

verseSecondEnding = \chordmode {
  c1./e |
}

verseC = \chordmode {
  f | s |
  g:m | s | f:maj7 | s |
  c/e | s | d:m | s |
  g:m | s | f:maj7 | s |
  c | s | d:m | s |
}

verse = {
  \repeat volta 2 {
    \verseA
    \alternative {
      \volta 1 {
        \verseB
      } \volta 2 {
        \verseSecondEnding
      }
    }
  }
  \verseC
}

instrumental = \chordmode {
  g1.:m | s |
  d:m | s | s | s |
}

changes = \chords {
  \introLong
  \verse
  \instrumental
}
