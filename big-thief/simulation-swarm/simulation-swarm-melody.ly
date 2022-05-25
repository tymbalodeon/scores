intro = \repeat volta 4 {
  s1 * 2 |
}

verseA = \relative c'' {
  \parenthesize df4 ef8 f16 c~ c8 c4. |
}

verseB = \relative c'' {
  ef16 ef \parenthesize ef ef ef8 df df4 bf8 c16 df~ |
}

preChorusVerseB = \relative c'' {
  ef16 ef \parenthesize ef ef ef8 df df4 bf8 c |
}

verse = {
  \verseA
  \verseB
}

singleVerse = \repeat volta 4 {
  \verse
}

preChorusVerse = \repeat volta 8 {
  \verseA
  \alternative {
    \volta 1,2,3,4,5,6,7 {
      \verseB
    } \volta 8 {
      \preChorusVerseB
    }
  }
}

interlude = \relative c'' {
  df4 r r2 | r2 r4 bf8 c16 df~ |
}

chorus = \relative c'' {
  df8 df f4 c4. c16 c |
  c c c8~ c bf df4. df16 df |
}

melody = {
  \intro
  \singleVerse
  \interlude
  \preChorusVerse
  \chorus
}
