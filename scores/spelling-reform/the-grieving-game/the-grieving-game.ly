\version "2.25.20"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "the-grieving-game-guitar.ily"

\header {
    title = "The Grieving Game"
    subtitle = "Spelling Reform"
    composer = "Dan Wisniewski"
}

\score {
    <<
        \theGrievingGameChords

        \new Staff \with {
            instrumentName = "Guitar"
            \numericTimeSignature
        } {
            \compressMMRests
            \theGrievingGame
        }
    >>
}
