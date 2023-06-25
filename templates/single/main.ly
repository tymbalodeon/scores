\version "2.25.6"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Title"
  composer = "Composer"
}

music = \relative c'' {
  \key c \major
  \time 4/4
  | c1
}

\score {
  \new Staff \with {
    instrumentName = "Instrument"
    \numericTimeSignature
  } {
    \compressMMRests
    \music
  }
}
