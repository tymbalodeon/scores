\version "2.25.17"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
    title = "The Organs of Enlightenment"
    subtitle = "Spelling Reform"
    composer = "Spelling Reform"
    arranger = ""
}

music = \relative c'' {
    \key c \major
    \time 4/4

    | c1
}

\score {
    \new Staff \with {
        instrumentName = "Guitar"
        \numericTimeSignature
    } {
        \compressMMRests
        \music
    }
}