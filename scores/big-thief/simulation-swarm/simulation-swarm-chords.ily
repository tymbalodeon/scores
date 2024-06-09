\version "2.25.16"
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

chorusOne = \chordmode {
  \repeat unfold 2 { \chorusA }
  ef:m af | df gf |
  \chorusA
  df2 bf:m |
  \time 2/4
  af |
  \time 4/4
  gf1 * 2 |
}

chorusTwo = \chordmode {
  \repeat unfold 2 { \chorusA }
  ef2:m af | df gf |
  \repeat volta 2 {
    \chorusA
    \alternative {
      \volta 1 {
        \chorusA
      }

      \volta 2 {
        df2 bf:m |
        \time 2/4
        af |
      }
    }
  }

  \time 4/4
  gf1 |
}

solo = \chordmode {
  \repeat volta 4 {
    df2 bf:m | gf ef:m |
  }
}

changes = \chords {
  \singleVerse
  \segnoMark \default
  \singleVerse
  \interlude
  \doubleVerse
  \bar "||"
  \chorusOne
  \codaMark \default
  \solo
}

changes_verse = \chords {
  \repeat volta 2 {
    \verse |
  }
}

changes_chorus_one = \chords {
  \chorusOne |
}

changes_chorus_two = \chords {
  \chorusTwo |
}

changes_solo = \chords {
  \solo |
}

changes = \chords {
  \verse
  \chorusOne
  \verse
  \solo
  \verse
  \chorusTwo
  \solo
}
