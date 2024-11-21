\version "2.25.20"
verse_chords = \chordmode {
  f1:/a |
  bf:maj |
  f1:/c |
  s |
}

chorus_end = \chordmode {
  \repeat unfold 2 {
    bf |
    f |
  }
  a:m |
  s |
}

chorus_chords = \chordmode {
  d1:m |
  f |
  \chorus_end
}

post_chorus_chords = \chordmode {
  g1:m |
  f |
  \chorus_end
}


changes = \chords {
  \repeat unfold 4 {
    \verse_chords
  }
  \chorus_chords
  \post_chorus_chords
}

changes_verse = \chords {
  \verse_chords
}

changes_chorus = \chords {
  \chorus_chords
  \post_chorus_chords
}
