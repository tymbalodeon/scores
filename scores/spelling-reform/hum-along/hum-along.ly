\version "2.25.19"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "hum-along-guitar.ily"

\header {
    title = "Hum Along"
    subtitle = "Spelling Reform"
    composer = "Dan Wisniewski"
}

\score {
    \new Staff \with {
        instrumentName = "Guitar"
        \numericTimeSignature
    } {
        \compressMMRests
        \humAlong
    }
}
