\version "2.25.19"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "hum-along-guitar.ily"

\header {
    title = "Hum Along"
    subtitle = "Spelling Reform"
    composer = "Dan Wisniewski"
}

\layout {
    \context {
        \Score {
            \override Glissando.minimum-length = 4
            \override Glissando.springs-and-rods = #ly:spanner::set-spacing-rods
        }
    }
}

\score {
    \new Staff \with {
        instrumentName = "Guitar"
        \numericTimeSignature
    } {
        \compressMMRests
        \removeWithTag #'album
        \humAlong
    }
}
