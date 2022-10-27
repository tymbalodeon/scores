intro = \chordmode {
  bf2.:7 |
  bf1  |
  f4:m g:m af |
  bf1  |
}

verse = \chordmode {
  \repeat volta 3 {
    f4:m g:m af |
    bf1  |
  }
  f4:m af bf2 |
  ef df |
}

chorus = \chordmode {
  af2 bf |
  c:m f |
  \repeat unfold 3 {
    af2 bf |
  }

  ef2. |
  bf1 |
}

changes = \chords {
  \intro
  \verse
  \chorus
}
