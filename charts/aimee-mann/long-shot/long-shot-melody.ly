mutedStrum = \override NoteHead.style = #'cross

intro = \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \repeat percent 8 {
    \improvisationOn
        c8 c c
    \mutedStrum
        b16 b b b
    \improvisationOn
        c
    \mutedStrum
        b b
    \improvisationOn
        c
    \mutedStrum
        b
    \improvisationOn
        c16 |
  }
}

verse = \relative c'' {
  fs8 e16 fs~ fs4 r4. e8 |
  fs16 e8 fs16~ fs4 r4. fs8~ |
  fs fs e d~ d a r a~ |
  a a4 b16 cs~ cs4 b8 cs |

  b2. a8 b~ |
  b4 r2. |
  R1 * 2 |
}

chorus = \relative c'' {
  fs8. e16~ e8 b~ b4 r8 e |
  fs8. e16~ e8 a,~ a4 r8 fs' |
  fs8. e16~ e8 cs~ cs a r a |
  a8. b16~ b4 r b8 cs |

  b2. a8 b~ |
  b4 r2 gs'8 e~ |
  e cs8~ cs4 r2 |
  r2. b8 cs |
}

solo = {
  s1 * 8 |
}

melody = {
  \intro
  \repeat volta 2 {
    \verse
  }
  \chorus
  \bar "||"
  \solo
  \bar "||"
}
