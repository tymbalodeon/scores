\version "2.24.0"

\include "settings.ily"
\include "style.ily"

\header {
  title = "Another Time, Another Place"
  composer = "Aftermath"
}

music = \relative c {
  \clef "bass"
  \key c \major
  \time 4/4

  c1
}

\layout {
  \context {
    \Score \consists #(set-bars-per-line '(4))
  }
}

\score {
  \new Staff \with {
    instrumentName = "Bass guitar"
  } {
    \music
  }
}
