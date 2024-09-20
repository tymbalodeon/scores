\version "2.25.19"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "together-apart-guitar.ily"

\header {
    title = "Together Apart"
    subtitle = "Spelling Reform"
    composer = "Dan Wisniewski"
    arranger = "Andrew Ciampa, guitar"
}

\score {
    \new Staff \with {
        instrumentName = "Guitar"
        \numericTimeSignature
    } {
        \compressMMRests
        \togetherApart
    }
}
