intro = \chordmode {
  bf1:maj/a |
  s |
  f:maj7 |
}

verse = \chordmode {
  g1:m  |
  s |
  f  |
  s |
  c  |
  c:7 |

  f2 af4 bf |

  a1 |
  g |
}

chorus = \chordmode {
  f1  |
  d:m  |
  a2:m a:m/g  |
  c c:7 |

  bf bf:m |
  f d:7/fs |
  g:m c |
}

solo = \chordmode {

}

changes_intro = \chords {
  \intro
}

changes_verse = \chords {
  \verse
}

changes_chorus = \chords {
  \chorus
}

changes_solo = \chords {
  \solo
}

changes = \chords {
  \verse
  \chorus
}
