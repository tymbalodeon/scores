\version "2.25.19"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
    title = "Together Apart"
    subtitle = "Spelling Reform"
    composer = "Dan Wisniewski"
    arranger = ""
}

music = \relative c'' {
    \key g \major
    \time 9/16

    | cs8 cs16 r8 d16 d8 r16
    | e8 e16 r8 f16 f8 r16
    | g8 g16 r8 a16 a8 r16
    | b8 b16 r8 cs16 cs8 r16

    \time 12/16

    | d16 d d d d d d d d d8.

    | R2. * 4

    | r4. c8 b16 ~ b8.
    | a16 ( g ) e ~ e4.

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
