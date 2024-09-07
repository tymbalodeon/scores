\version "2.25.17"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
    title = "I Am Your Hypocrite"
    subtitle = "Spelling Reform"
    composer = "Dan Wisniewski"
}

music = \relative c'' {
    \key g \major

    | R1 * 16
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
