\version "2.25.19"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "the-grieving-game-guitar.ily"

\header {
    title = "The Grieving Game"
    subtitle = "Spelling Reform"
    composer = "Dan Wisniewski"
}

\score {
    \new Staff \with {
        instrumentName = "Guitar"
        \numericTimeSignature
    } {
        \compressMMRests
        \theGrievingGame
    }
}
