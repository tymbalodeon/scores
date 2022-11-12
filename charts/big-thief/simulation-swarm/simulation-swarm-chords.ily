verseA = \chordmode {
  df2 gf
}

verseB = \chordmode {
  af2 gf
}

verse = \chordmode {
  \verseA
  \verseB
}

interlude = \repeat volta 2 {
  \verse
}

singleVerse = \repeat volta 4 {
  \verse
}

doubleVerse = \repeat volta 8 {
  \verseA
  \alternative {
    \volta 1,2,3,4,5,6,7 {
      \verseB
    } \volta 8 {
      \verseB
    }
  }
}

chorusA = \chordmode {
  df2 bf:m | af gf |
}

chorus = \chordmode {
  \repeat unfold 2 { \chorusA }
  ef:m af | df gf |
  \chorusA
  df2 bf:m |
  \time 2/4
  af |
  \time 4/4
  gf1 * 2 |
}

solo = \chordmode {
  \repeat volta 4 {
    df1 | bf:m | gf | ef:m |
  }
}

changes = \chords {
  \singleVerse
  \segnoMark \default
  \singleVerse
  \interlude
  \doubleVerse
  \bar "||"
  \chorus
  \codaMark \default
  \solo
}

changes_verse = \chords {
  \verse |
}

changes_chorus = \chords {
  \chorus |
}

changes_solo = \chords {
  \solo |
}
