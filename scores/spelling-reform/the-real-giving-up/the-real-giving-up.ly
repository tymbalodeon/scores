\version "2.25.22"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "the-real-giving-up-guitar.ily"

\header {
  title = "The Real Giving Up"
  subtitle = "Spelling Reform"
  composer = "Dan Wisniewski"
}

\score {
  \new Staff \with {
    instrumentName = \markup {
      \center-column {
        "Guitar"
        \tiny \line { "Capo I"  }
      }
    }
    \numericTimeSignature
  } {
    \key f \major
    \compressMMRests
    \transpose e f \theRealGivingUp
  }
}
