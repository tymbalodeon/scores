\version "2.25.8"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "How You're Underrated"
  subtitle = "Spelling Reform"
  composer = "Dan Wisniewski"
}

music = \relative c' {
    \key bf \major
    \time 2/2

    | R1 * 8
    | R1 * 8
    | R1 * 13

    | R1 * 4

    | f,1
    | ff1
    | ef1
    | f1

    | ff1
    | ef1
    | ff1
    | ef1

    | r8 d' ( c ) g ( bf ) r r4
    | r8 d ( c ) g ( bf ) f' r4
    | r8 d ( c ) g ( bf ) r r4
    | r8 c ( d ) f bf r r4
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
