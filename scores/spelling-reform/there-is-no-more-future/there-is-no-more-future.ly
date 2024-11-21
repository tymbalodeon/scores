\version "2.25.20"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "there-is-no-more-future-guitar.ily"

\header {
    title = "There Is No More Future"
    subtitle = "Spelling Reform"
    composer = "Dan Wisneiwski"
}

\score {
    \new Staff \with {
        instrumentName = "Guitar"
        \numericTimeSignature
    } {
        \compressMMRests
        \thereIsNoMoreFuture
    }
}
