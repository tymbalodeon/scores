\version "2.24.0"

\include "settings.ily"

\header {
  title = "Winter Trip"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

music = \relative c {
  \tempo 4 = 70
  \key f \minor
  \compoundMeter #'(4 2 4)
  \clef "bass"

  \compressMMRests {
    \repeat unfold 21 {
      R1. |
    }

    \time 4/4

    R1 * 5 |
  }

  \compoundMeter #'(4 2 4)

  f2. c4 ef4 ef4 |
  af,1 ~ af4 ~ af8 ef'16 e |
  f2. c4 ef4 ef4 |
  <af ef'>1 ~ <af ef'>8 bf,8 c8 ef16 e |
  f2 g8. af16 ~ af4 ef8. bf'16 ~ bf8 ef,8 |
  c1 ~ c8 bf8 af8 g8 |
  f2. ef'4 g,4 g4 |

  \time 4/4

  af1 ~ |
  af2. ~ af8 ef'8 |
  af2 ~ af8. bf16 ~ bf8 c8 |
  ef2 ~ ef8. f16 ~ f8 bf,16 c |
  g'8. ef16 ~ ef2 ~ ef8. c,16 |

  \compoundMeter #'(4 2 4)

  \repeat volta 2 {
    f8 _ "Play 3 times" r16 g' ~ g ef8 c,16 f8 r g' ~ g ef8 c,16 ef8 r16 bf'' ~ bf ef,8 ef,16 |
    af8 r16 g' ~ g ef8 ef,16 af8 r16 g' ~ g ef8 ef,16 af8 r16 f' ~ f ef af, g |
  }

  f8 r16 g' ~ g ef8 c,16 f8 r16 g' ~ g ef8 c,16 ef8 r16 bf'' ~ bf ef,8 ef,16 |

  \repeat volta 2 {
    \time 4/4
    af8 r16 g' ~ g ef8 ef,16 af8 r16 g' ~ g ef8 ef,16 |
    af8 r16 f' ~ f ef8 ef,16 af8 r16 f' ~ f ef8 ef,16 |
  }

  af8 r16 g' ~ g ef8 ef,16 af8 r16 g' ~ g ef af,8 |

  \compoundMeter #'(4 2 4)

  f,16 f f f f f f f f f f f f f f f g g g g g g g g |
  af16 af af af af af af af af af af af af af af af af af af af af af ef' e |
  f16 f f f f f f f f f f f f, f f f ef' ef ef ef ef ef ef ef |
  af16 af af af af af af af af af af af af af af af af af bf, bf c c ef e |
  f16 f f f f f f f g g g af af af af af ef ef ef bf' ef,8 bf'8 |
  c,16 c c c c c c c c c c c c c c c c c bf bf af af g g |
  f16 f f f f f f f f f f f f f f f g g g g g g g8 |

  \repeat volta 2 {
    \time 4/4
    af'8 r16 g'16 ~ g16 ef8 ef,16 af8 r16 g'16 ~ g16 ef8 ef,16 |
    af8 r16 f'16 ~ f16 ef8 ef,16 af8 r16 f'16 ~ f16 ef8 ef,16
  }
  af8 r16 g'16 ~ g16 ef8 ef,16 af8 r16 g'16 ~ g16 ef16 af,16 g16 |

  \compoundMeter #'(6 2 4)

  <f c'> \breve |
  s1 * 8 |

  \compoundMeter #'(4 2 4)

  <af ef'>4 <af ef'>4 <af ef'>4 <af ef'>4 <af ef'>4 <af ef'>4 |
  <af ef'>4 <af ef'>4 <af ef'>4 <af ef'>4 <af ef'>4 <af ef'>4 ~ |
  <af ef'>1 ~ <af ef'>2 |

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
  } {
    \music
  }
}
