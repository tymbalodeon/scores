\version "2.24.0"

\include "settings.ily"
\include "style.ily"

\header {
  title = "All I Wanna Do"
  composer = "Aftermath"
}

bass = \relative c'' {
  \clef "bass"
  \key d \major
  \time 4/4

  r2 r4 g4 \repeat volta 2 {
    g,4 g g8 b cs d ~ |
    d8 d d d ~ d d d a
    \alternative {
      \volta 1 {
        fs'4 fs fs8 fs a, b ~ |
        b8 b r a~ a a a fs
      }
      \volta 2 {
        fs'4 fs fs8 fs cs fs, ~ |
        fs8 fs fs fs ~ fs fs fs (
        e )
      }
    }
  }
}

\layout {
  \context {
    \Score \consists #(set-bars-per-line '(4))
  }
}

\score {
  \new Staff \with {
    instrumentName = "Bass Guitar"
  } {
    \bass
  }
}
