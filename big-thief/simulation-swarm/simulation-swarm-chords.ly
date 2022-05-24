verse = \chordmode {
  df1 | gf | af | gf |
}

singleVerse = \repeat volta 4 {
  \verse
}

doubleVerse = \repeat volta 8 {
  \verse
}

chorusA = \chordmode {
  df1 | bf:m | af | gf |
}

chorus = \chordmode {
  \repeat volta 2 { \chorusA }
  ef:m | af | df | gf |
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
  \sectionLabel "Interlude"
  \repeat volta 2 {
    \verse
  }
  \sectionLabel "Verse"
  \doubleVerse
  \sectionLabel "Chorus"
  \chorus
  % \sectionLabel "Verse"
  % \doubleVerse
  \bar "||"
  \sectionLabel "Solo"
  \solo
  % \sectionLabel "Verse"
  % \singleVerse
  % \repeat volta 2 {
  %   \verse
  % }
  % \chorus
  % \solo
}
