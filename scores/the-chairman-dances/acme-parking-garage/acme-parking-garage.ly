\version "2.25.17"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
    title = "Acme Parking Garage"
    subtitle = "The Chairman Dances"
    composer = "Eric Krewson"
    arranger = "Will Schwarz, bass"
}

music = \relative c {
    \clef "bass"
    \key g \major

    | g1 ~
    | g2. g8 a
    | bf1
}

\score {
    \new Staff \with {
        instrumentName = "Bass"
        \numericTimeSignature
    } {
        \compressMMRests
        \music
    }
}
