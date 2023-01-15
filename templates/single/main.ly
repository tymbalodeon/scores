\version "2.24.0"

\include "settings.ily"
\include "style.ily"

\header {
  title = "Title"
  composer = "Composer"
}

music = \relative c'' {
  \key c \major
  \time 4/4
  | c1
}

\layout {
  \context {
    \Score \consists
    #(set-bars-per-line '(4))
  }
}

\score {
  \new Staff \with {
    instrumentName = "Instrument"
  } {
    \music
  }
}
