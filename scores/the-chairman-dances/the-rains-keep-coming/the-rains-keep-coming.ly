\version "2.25.13"

\include "helpers/settings.ily"

\header {
  title = "The Rains Keep Coming"
  composer = "Eric Krewson (The Chairman Dances)"
  arranger = "Ben Rosen, bass"
}

music = \relative a, {
  \tempo 4 = 120
  \key a \major
  \time 2/4
  \clef "bass"

  a8 a' e a |
  r8 a e a |
  r8 a e a |

  \repeat volta 2 {
    \repeat unfold 3 {
      a,8 a' e a |
    }
    a,8 a b cs |

    d8 d' a d |
    d,8 d' d, ds |
    e8 e e b |
    e,8 e fs gs |

    a8 a' e a |
    r8 a e a |
  }

  \repeat volta 2 {
    d,8. d16 ~ d8 a |
    d8 a'16 b ~ b8 d |
    d,8. d16 ~ d8 a |
    d8 a8 d fs |
    g8. g16 ~ g8 d |
    g8 g16 d' ~ d d, b'8 |
    g8. g16 ~ g8 d |

    \alternative {
      \volta 1 {
        g8 g16 d' ~ d d, b'8 |
      }

      \volta 2 {
        \acciaccatura { e8 } fs e d b |
      }
    }
  }

  a8. a16 ~ a8 e |
  g8. g16 ~ g8 a |
  d,8 d' a d |
  d,8 d' d, ds |
  e8 e e b |
  e,8 e fs gs |
  a8 a' e a |
  r8 a e a |
  r8 a e a |

  \repeat volta 2 {
    a,8 a' e a |
    a, a' e a |
    a,8 a' e a |
    a,8 a b cs |
    d8 d' a d |
    d,8 d' d, ds |
    e8 e e b

    \alternative {
      \volta 1 {
        e,8 e8 fs8 gs8 |
        a8 a'8 e8 a8 |
        r8 a8 e8 a8
      }

      \volta 2 {
        a,8 a'8 e8 a8 |
        r8 a8 e8 a8
      }
    }
  }

  \repeat volta 2 {
    d,8. d16 ~ d8 a8 |
    d8 a'16 b16 ~ b8 d8 |
    d,8. d16 ~ d8 a8 |
    d8 a8 d8 fs8 |
    g8. g16 ~ g8 d8 |
    g8 g16 d'16 ~ d16 d,16 b'8 |
    g8. g16 ~ g8 d8 }
  \alternative { {
    |
    g8 g16 d'16 ~ d16 d,16 b'8 }
                 {
                   |
                   \acciaccatura { e8 } fs8 e8 d8 b8 }
               } |
  a8. a16 ~ a8 e8 |
  g8. g16 ~ g8 a8 |
  d,8 d'8 a8 d8 |
  d,8 d'8 d,8 ds8 |
  e8 e8 e8 b8 |
  e,8 e8 fs8 gs8 |
  fs'8. fs16 ~ fs8 cs8 |
  fs8. fs16 ~ fs8 cs8 |
  fs8. fs16 ~ fs8 cs8 |
  fs8 cs8 fs8 gs8 |
  a8. a16 ~ a8 e8 |
  a8. a16 ~ a8 e8 |
  a8. a16 ~ a8 e8 |
  a8 e8 a8 gs8 |
  fs8. cs'16 ~ cs16 d,16 cs8 |
  fs8. cs'16 ~ cs16 d,16 cs8 |
  fs8. cs'16 ~ cs16 d,16 cs8 |
  fs8 cs8 fs8 gs8 |
  a8. a16 ~ a8 e8 |
  a8 a,8 d8 ds8 |
  e8. e16 ~ e8 b8 |
  e,8 e8 fs8 gs8 \repeat volta 2 {
    |
    fs8. fs16 ~ fs8 e8 |
    fs8. fs16 ~ fs8 e8 |
    fs8. fs16 ~ fs8 e8 |
    fs8 e8 fs8 gs8 |
    a8. a16 ~ a8 e8 |
    a8. a16 ~ a8 e8 |
    a8. a16 ~ a8 e8 |
    a8 e8 a8 gs8 }
  |
  fs8 e8 fs8 e8 |
  fs8 e8 fs8 e8 |
  fs8 e8 fs8 e8 |
  fs8 e8 fs8 gs8 |
  a8 e8 a8 e8 |
  a8 e8 a8 e8 |
  a8 e8 a8 e8 |
  a8 e8 a8 gs8 |
  fs8 e8 fs8 e8 |
  fs8 e8 fs8 e8 |
  fs8 e8 fs8 e8 |
  fs8 e8 fs8 a8 |
  b8. b16 ~ b8 fs8 |
  b8. b16 ~ b8 fs8 |
  b8. b16 ~ b8 fs8 |
  b8 fs8 b8 cs8 |
  d8. d16 ~ d8 a8 |
  d8. d16 ~ d8 a8 |
  d8. d16 ~ d8 a8 |
  d8. d16 ~ d8 a8 |
  \time 3/8  d8 d8 d8 |
  \time 2/4  a4 a4 |
  a4 a4 |
  a4 a4 |
  a4 cs4 |
  r8 d8 ~ d8 d8 ~ |
  d8 d8 ~ d8 d8 ~ |
  d8 e8 e8 e8 |
  a,8 a'8 e8 a8 |
  a,8 a'8 e8 a8 |
  a,8 a'8 e8 a8 |
  a,8 a8 b8 cs8 |
  d8 d'8 a8 d8 |
  d,8 d'8 d,8 ds8 |
  e8 e8 e8 b8 |
  a8 a'8 e8 a8 |
  r8 a8 e8 a8 \repeat volta 2 {
    |
    d,8. d16 ~ d8 a8 |
    d8 a'16 b16 ~ b8 d8 |
    d,8. d16 ~ d8 a8 |
    d8 a8 d8 fs8 |
    g8. g16 ~ g8 d8 |
    g8 g16 d'16 ~ d16 d,16 b'8 |
    g8. g16 ~ g8 d8 }
  \alternative { {
    |
    g8 g16 d'16 ~ d16 d,16 b'8 }
                 {
                   |
                   \acciaccatura { e8 } fs8 e8 d8 b8 }
               } |
  a8. a16 ~ a8 e8 |
  g8. g16 ~ g8 a8 \repeat volta 2 {
    |
    d,8 _ "Play 4 times" d'8 c8 d8 |
    r8 g,16 a16 ~ a16 c16 d8 }
  |
  d,2 ~ |
  d2 ~ |
  d2 ~ |
  d2 \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
  } {
    \music
  }
}
