\version "2.25.19"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"
\include "helpers/set-bars-per-line.ily"

\include "meet-me-in-the-atmosphere-guitar.ily"

\header {
  title = "Meet Me In The Atmosphere"
  subtitle = "Spelling Reform"
  composer = "Dan Wisniewski"
}

\score {
  \layout {
    \context {
      \Score
      \consists #(set-bars-per-line '(6 5 6))
    }
  }

  <<
    \changes

    \new Staff \with {
      instrumentName = \markup {
        \center-column {
          "Guitar"
          \tiny \line { "Capo III"  }
        }
      }
      \numericTimeSignature
    } {
      \compressMMRests
      \meetMeInTheAtmosphere
    }
  >>
}
