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
  \sectionLabel "Interlude"
  \verse
}

singleVerse = \repeat volta 4 {
  \verse
}

doubleVerse = \repeat volta 8 {
  \sectionLabel "Verse"
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
  \sectionLabel "Chorus"
  \repeat volta 2 { \chorusA }
  ef:m af | df gf |
  \repeat volta 2 { \chorusA }
  gf |
}

solo = \chordmode {
  \repeat volta 4 {
    df1 | bf:m | gf | ef |
  }
}

changes = \chords {
  \sectionLabel "Intro"
  \singleVerse
  \sectionLabel "Verse"
  \singleVerse
  \interlude
  \doubleVerse
  \chorus
  \bar "||"
}
