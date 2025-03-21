\version "2.25.24"
changes_intro = \chords {
  bf2.:7 |
  bf1  |
  f4:m g:m af |
  bf1  |
}

changes_verse = \chords {
  \repeat volta 3 {
    f4:m g:m af |
    bf1  |
  }
  f4:m af bf2 |
  ef df |
}

changes_chorus = \chords {
  af2 bf |
  c:m f |
  \repeat unfold 3 {
    af2 bf |
  }

  ef2. |
  bf1 |
}
