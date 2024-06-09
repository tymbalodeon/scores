\version "2.25.16"
intro_base = \chordmode {
  d1:m |
}

intro = \chordmode {
  \repeat unfold 2 {
    \intro_base
    s1 |
  }
}

verse_a = \chordmode {
  bf1 |
  a:m |
  d:m |
  s |
}

verse = \chordmode {
  \verse_a

  g:m |
  c |
  d:m |
  s |

  \verse_a

  g:m |
  s |
  c |
  s |
}

chorus = \chordmode {
  d1:m |
  s |
  g:m |
  s |

  c |
  s |
  d:m |
  s |
}

changes = \chords {
  \intro
  \verse
  \chorus
}

changes_intro = \chords {
  \intro_base
}

changes_verse = \chords {
  \verse
}

changes_chorus = \chords {
  \chorus
}
