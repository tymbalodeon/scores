\version "2.25.24"
intro = \repeat volta 4 {
  s1 * 2 |
}

verseA = \relative c'' {
  \parenthesize df4 ef8 f16 c~ c8 c4. |
}

verseB = \relative c'' {
  ef16 ef \parenthesize ef ef ef8 df df4 bf8 c16 df \laissezVibrer |
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
  c c8 c16~ c8 bf df4. df16 df |
  df df8. f4 c16 c8. c16 c8. |
  c16 c8. c bf16 df4 r8 ef16 f |

  gf8. gf16 r8 c, c8. c16 r8 ef |
  f16 f8. f8 ef16 bf~ bf4 r8 ef |
  ef ef f c16 c~ c8 c c c |
  c16 c8 c16~ c8 bf df4 r16 ef ef ef |

  ef8 ef ef16( f8) df16 c8 c16 c~ c8 c |
  \time 2/4
  c c16 c~ c16 c df8~ |
  \time 4/4
  df4 r2. |
  R1 * 1_\markup { \italic "D.S. al Coda con ripetizione" } |
}

melody = {
  \intro
  \singleVerse
  \interlude
  \preChorusVerse
  \chorus
}

melody_verse = \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn

  \repeat volta 2 {
    df2 gf |
    af gf |
  }
}

melody_chorus_one = \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  \repeat unfold 2 {
    df2 bf |
    af gf |
  }
  ef af |
  df gf |
  df bf |
  af gf |
  df bf |
  s |
  \repeat unfold 2 {
    s1 |
  }
}

melody_chorus_two = \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  \repeat unfold 2 {
    df2 bf |
    af gf |
  }
  ef af |
  df gf |

  \repeat volta 2 {
    df bf |
    af gf |
    \alternative {
      \volta 1 {
        df bf |
        af gf |
      }

      \volta 2 {

        df bf |
        s |
      }
    }
  }

  s1 |
}

melody = {
  \melody_verse
  \melody_chorus_one
  \melody_verse
  | s1 * 2
  \melody_verse
  \melody_chorus_two
  | s1 * 2
}
