\version "2.24.0"

\include "settings.ily"

\header {
  title = "Our Hearts Beating"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

music = \relative g {
  \key g \major
  \time 4/4
  \clef "bass"

  \compressMMRests {
    R1*10 |
  }

  r2 r8 d e fs |
  g4 g d d |

  \repeat volta 2 {
    c4. c8 ~ c8 d8 e8 fs8 |
    g4 g,4 d'4 d4 |

    \alternative {
      \volta 1 {
        c4. c8 ~ c8 d8 e8 fs8 |
        g4 g4 d4 d4 |
      }

      \volta 2 {
        b'4. b8 ~ b8 b8 g4 |
        d2. d4 |
      }
    }
  }

  \ottava #1
  c'4 c8 b'8 ~ b8 g8 c,8 g'8 |
  g,8 g8 b'8 g,8 d8 d8 fs'8 d,8 |
  \ottava #0

  c4 c8 e'8 ~ e8 c8 c,8 c'8 |
  g,8 g8 b'8 g,8 d'8 d8 fs'8 d,8 |

  \ottava #1
  c'4 c8 b'8 ~ b8 g8 c,8 g'8 |
  g,8 g8 b'8 g,8 d8 d8 fs'8 d,8 |
  \ottava #0

  c4 c8 e'8 ~ e8 d,8 e8 fs8 |
  g4 g4 d4 d4 |
  c4. c8 ~ c8 d8 e8 fs8 |
  g4 g,4 d'4 d4 |

  c4. c8 ~ c8 d8 e8 fs8 |
  g4 g4 d4 d4 |
  c4. c8 ~ c8 d8 e8 fs8 |
  g4 \acciaccatura a16  b4  a4 d,4 |

  \repeat volta 2 {
    c4. _ "Play 4 times" c8 ~ c8 d8 e8 fs8 |
    g4 g4 d4 d4 |
    c4. c8 ~ c8 d8 e8 fs8 |
    g4 g,4 d'4 d4 }
  |
  \ottava #1 c'4 c8 b'8 ~ b8 g8 c,8 g'8 |
  g,8 g8 b'8 g,8 d8 d8 fs'8 \ottava #0 d,8 |
  c4 c8 e'8 ~ e8 c8 c,8 c'8 |
  g,8 g8 b'8 g,8 d'8 d8 fs'8 d,8 |
  b'8 b8 b8 b8 ~ b8 b8 g4 |
  d8 d8 d8 d8 ~ d8 d8 d4 \repeat volta 2 {
    |
    r8 _ "Play 3 times" e'8 d8 ( e8 ) a,8 ( b8 ) ~ b4 |
    r8 e8 d8 ( e8 ) a,8 ( b8 ) d,8 ( e8 ) }
  \repeat volta 2 {
    |
    r8 e'8 d8 ( e8 ) a,8 ( b8 ) ~ b4 |
    r8 \ottava #1 b'8 a8 ( b8 ) fs8 ( g8 ) d8 \ottava #0 b8 |
    r8 e8 d8 ( e8 ) a,8 ( b8 ) ~ b4 |
    r8 e8 d8 ( e8 ) a,8 ( b8 ) d,8 ( e8 ) }
  \repeat volta 2 {
    |
    \ottava #1 c'4 _ "Play 3 times" c8 b'8 ~ b8 g8 c,8 g'8 |

    g,8 g8 b'8 g,8 d8 d8 fs'8 \ottava #0 d,8 |
    c4 c8 e'8 ~ e8 c8 c,8 c'8 |
    g,8 g8 b'8 g,8 d'8 d8 fs'8 d,8 }
  |
  \ottava #1 c'4 c8 b'8 ~ b8 g8 c,8 g'8 |
  g,8 g8 b'8 g,8 d8 d8 fs'8 \ottava #0 d,8 \repeat volta 2 {
    |
    e,8 _ "Play 3 times" e8 e8 e8 ~ e8 e8 e8 fs8 |
    e'8 e'8 d8 ( e8 ) a,8 ( b8 ) e,4 }
  |
  e,8 e8 e8 e8 ~ e8 e8 e8 fs8 |
  d'1 ~ |
  d1 \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
  } {
    \music
  }
}
