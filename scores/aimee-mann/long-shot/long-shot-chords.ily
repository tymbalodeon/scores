\version "2.25.24"
verseA = \chordmode {
  e1 | d | a | fs:m |
}

verseBStart = \chordmode {
  e1 | b:m | fs:m |
}

verseB = \chordmode {
  \verseBStart a |
}

intro = \chordmode {
  \verseA
  \verseBStart a2 \parenthesize a:9 |
}

verse = {
  \verseA
  \verseB |
}

changes = \chords {
  \intro
  \segnoMark \default
  \repeat volta 2 {
    \verse
  }
  \verse
  \codaMark \default
  \bar "||"
  \grace s16
  \verse
}

changesCoda = \chords {
  \repeat volta 2 {
    \verseB
  }
}

changes_verse = \chords {
  \verse
}

changes_end = \chords {
  \verseB
}
