\version "2.25.17"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
    title = "Dance to the Neighbor's Stereo"
    subtitle = "The Chiarman Dances"
    composer = "Eric Krewson"
    arranger = "Ben Rosen, bass"
}

music = \relative c {
    \key cs \minor
    \clef "bass"

    | fs4 fs fs8 cs fs cs
    | e4 e r8 b r b
    | fs'4 fs fs8 cs fs cs
    | e4 e r8 b r b
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
