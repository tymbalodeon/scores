\version "2.25.20"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "i-am-your-hypocrite-guitar.ily"

\header {
    title = "I Am Your Hypocrite"
    subtitle = "Spelling Reform"
    composer = "Dan Wisniewski"
}

\score {
    <<
        \iAmYourHypocriteChords

        \new Staff \with {
            instrumentName = "Guitar"
            \numericTimeSignature
        } {
            \compressMMRests
            \removeWithTag #'album
            \iAmYourHypocrite
        }
    >>
}
