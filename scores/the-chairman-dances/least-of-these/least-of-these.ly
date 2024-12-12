\version "2.25.21"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "scores/the-chairman-dances/least-of-these/least-of-these-bass.ily"

\header {
  title = "Least of These"
  subtitle = "The Chairman Dances"
  composer = "Eric Krewson"
  arranger = "Ben Rosen, bass"
}

\score {
    \new Staff \with {
        instrumentName = "Bass"
        \numericTimeSignature
    } {
        \compressMMRests
        \leastOfTheseBass
    }
}
