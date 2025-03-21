\version "2.25.24"
changes_verse = \chords {
    c2.:sus f4 |
    bf2.:sus ef4 |

}

changes_chorus = \chords {
  a2:m  f4|
  c1 |
  bf4 af2 |
  f1 |
  \repeat unfold 2 {
    a4 f
  }
  a
  g1 |
  g1 |
}

changes_solo = \chords {
  \transpose c g \changes_verse
}
