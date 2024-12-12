\version "2.25.21"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "the-painters-guitar.ily"

\header {
    title = "The Painters"
    subtitle = "The Quelle Source"
    composer = "Dan Wisniewski"
}

\score {
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
	    \removeWithTag #'album
        \thePainters
    }
}
