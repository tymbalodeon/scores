verse = \chordmode {
  \repeat volta 2 {
    \repeat unfold 2 {
      d1  |
      fs:m |
    }

    e:m |
    b:m |
    g2 e:/gs |
    a1 |
  }
}

chorus = \chordmode {
  \repeat volta 4 {
    a8. d8 a8 g16 |
    s1 |
    d2
  }
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
