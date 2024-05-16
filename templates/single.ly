\version "[lilypond_version]"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
    title = "[title]"
    subtitle = "[subtitle]"
    composer = "[composer]"
    arranger = "[arranger]"
}

music = \relative c'' {
    \key c \major
    \time 4/4

    | c1
}

\score {
    \new Staff \with {
        instrumentName = "[instrument]"
        \numericTimeSignature
    } {
        \compressMMRests
        \music
    }
}
