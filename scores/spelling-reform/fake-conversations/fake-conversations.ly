\version "2.25.17"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
    title = "Fake Conversations"
    subtitle = "Spelling Reform"
    composer = "Dan Wisniewski"
}

music = \relative c' {
    \key g \major

    c
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
