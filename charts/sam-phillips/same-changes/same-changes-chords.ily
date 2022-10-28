intro = \chordmode {
  \repeat unfold 2 {
    d1:m |
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
