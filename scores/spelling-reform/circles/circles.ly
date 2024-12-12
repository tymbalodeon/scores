\version "2.25.21"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "circles-guitar.ily"

\header {
    title = "Circles"
    subtitle = "Spelling Reform"
    composer = "Dan Wisniewski"
}

\score {
    \new Staff \with {
        instrumentName = "Guitar"
        \numericTimeSignature
    } {
        \compressMMRests
        \circles
    }
}
