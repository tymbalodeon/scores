\version "2.25.20"
verse = \chordmode {
  fs1:m  |
  s |
  e  |
  s |
}

chorus = \chordmode {
  \repeat unfold 3 {
    a1 |
    cs:m |
  }
  e |
}

changes_verse = \chords {
  \verse
}

changes_chorus = \chords {
  \chorus
}

changes = \chords {
  \verse
  \chorus
}
