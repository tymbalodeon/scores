\version "2.25.24"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "the-organs-of-enlightenment-guitar.ily"

\header {
    title = "The Organs of Enlightenment"
    subtitle = "Spelling Reform"
    composer = "Dan Wisniewski"
}

\score {
    \new Staff \with {
        instrumentName = "Guitar"
        \numericTimeSignature
    } {
        \compressMMRests
        \theOrgansOfEnlightenment
    }
}
