\version "2.25.8"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "What's So Hard About Pretending"
  subtitle = "Spelling Reform"
  composer = "Dan Wisniewski"
}

music = \relative c'' {
    \key fs \major
    \time 2/2

    | R1 * 4
    | R1 * 8
    | R1 * 17

    | R1
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
