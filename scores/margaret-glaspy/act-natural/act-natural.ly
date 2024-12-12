\version "2.25.21"

\include "helpers/settings.ily"

\include "act-natural-changes.ily"
\include "act-natural-lyrics.ily"
\include "act-natural-melody.ily"
\include "act-natural-structure.ily"

\header {
  title = "Act Natural"
  composer = "Margaret Glaspy"
}

\score {
    <<
        \changes
        \new Staff \with {
            instrumentName = "Guitar"
            \numericTimeSignature
        } {
            \compressMMRests

            <<
                \melody
                \structure
            >>
        }
    >>
}
