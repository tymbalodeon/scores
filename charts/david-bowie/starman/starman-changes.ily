intro = \chordmode {
  bf1:maj/a |
  s |
  f:maj7 |
  s |
}

verse_part_one = \chordmode {
  g1:m  |
  s |
  f  |
  s |
  c  |
  c:7 |
}

verse = \chordmode {
  \verse_part_one
  f2 af4 bf |
  \verse_part_one
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
  \verse_part_one

  f2 af4 bf |

  a1 |
  g |
}

changes_chorus = \chords {
  \chorus
}

changes_solo = \chords {
  \solo
}

changes = \chords {
  \intro
  \verse
  \chorus
}
