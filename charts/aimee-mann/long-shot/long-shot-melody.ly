intro = \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \repeat percent 8 {
    \improvisationOn
    c8 c c c16 c~ c c c8 r16 c c8 |
  }
}

verse = {
  \relative c''
  fs e16 fs~ fs4 r4. e8 |
  fs16 e8 fs16~ fs4 r4. fs8~ |
  fs fs e d~ d a r a~ |
  a4 a8 b16 cs~ cs4 b8 cs |

  b2. a8 b~ |
  b4 r r gs'8 e~ |
  e cs8~ cs4 r2 |
  r2. b8 cs |
}

melody = \relative c'' {
  \intro
  \repeat volta 2 {
    \verse
  }
}
