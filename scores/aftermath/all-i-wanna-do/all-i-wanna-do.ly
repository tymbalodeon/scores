\version "2.24.0"

\include "settings.ily"
\include "style.ily"

\header {
  title = "All I Wanna Do"
  composer = "Aftermath"
}

bass = \relative c' {
  \clef "bass"
  \key d \major
  \time 4/4

  r2 r4 g4 \glissando
  \repeat volta 2 {
    g,4 g g8 b cs d ~ |
    d8 d d d ~ d d d a |
    \alternative {
      \volta 1,2 {
        fs'4 fs fs8 fs a, b ~ |
        b8 b r a ~ a a a fs |
      }
      \volta 3 {
        fs'4 fs fs8 fs cs fs, ~ |
        fs8 fs fs fs ~ fs fs fs ( e ) |
      }
    }
  }

  \repeat volta 2 {
    b'4 b r8 cs r d ~ |
    d d d d ~ d d d a |
    g'4 g g8 fs r e ~ |
    e e e e ~ e e e ( d ) |
    b4 b r8 cs r d ~ |
    d d d d ~ d d d a |
    \alternative {
      \volta 1 {
        g'4 g g8 fs r e ~ |
        e e e ( d ) e b' e, ( d ) |
      }
      \volta 2 {
        g4 r r8 fs r e |
        r e r e r e e ( d ) |
      }
    }
  }

  g,4 g g8 b cs d ~ |
  d d d d ~ d d d a |
  fs'4 fs fs8 fs a, b ~ |
  b b r a ~ a a a fs |

  g4 g g8 b cs d ~ |
  d fs g a ~ a g fs g |
  fs4 fs fs8 fs a, b ~ |
  b b r a ~ a a a fs |

  g4 g g8 b cs d ~ |
  d fs ( \glissando a ) d ~ d a g4 |
  fs4 fs fs8 fs r fs ~ |
  fs cs fs as cs e d cs |
}

\layout {
  \context {
    \Score \consists #(set-bars-per-line '(3 4 4 4
                                           2 4 4 4))
  }
}

\score {
  \new Staff \with {
    instrumentName = "Bass Guitar"
  } {
    \bass
  }
}
