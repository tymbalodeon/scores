\version "2.25.17"
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

chorus_main = \chordmode {
  f1  |
  d:m  |
  a2:m a:m/g  |
  c c:7 |
}

chorus_end = \chordmode {
  bf bf:m |
  f d:7/fs |
  g:m c |
}

chorus = \chordmode {
  \repeat unfold 2 {
    \chorus_main
  }
  \chorus_end
}

solo_base = \chordmode {
  bf1 |
  f |
  c |
  f |
}

solo = \chordmode {
  \solo_base

  bf1 |
  f |
  c |
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
  \chorus_main
  \chorus_end
}

changes_solo = \chords {
  \solo
}

changes = \chords {
  \repeat unfold 2 {
    \intro
  }
  \verse
  \chorus
  \solo
  \verse
  \repeat unfold 2 {
    \chorus
  }
  \repeat unfold 2 {
    \solo_base
  }
}
