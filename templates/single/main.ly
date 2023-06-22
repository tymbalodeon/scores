\version "2.25.5"

\include "helpers/settings.ily"
\include "helpers/bar-numbers/left-bar-numbers.ily"

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
