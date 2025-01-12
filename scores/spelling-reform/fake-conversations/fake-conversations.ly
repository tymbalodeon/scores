\version "2.25.22"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "fake-conversations-guitar.ily"

\header {
    title = "Fake Conversations"
    subtitle = "Spelling Reform"
    composer = "Dan Wisniewski"
    arranger = "Andrew Ciampa, guitar"
}

\score {
    \new Staff \with {
        instrumentName = "Guitar"
        \numericTimeSignature
    } {
        \compressMMRests
        \removeWithTag #'album
        \fakeConversations
    }
}
