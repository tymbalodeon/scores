\version "2.25.17"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
    title = "Circles"
    subtitle = "Spelling Reform"
    composer = "Dan Wisniewski"
}

music = \relative c'' {
    \time 4/4

    | R1 * 7
    | \new CueVoice \with { \consists "Pitch_squash_engraver" } { \improvisationOn r4. c8 \fermata ~ c2 }

    | R1 * 9
    | R1 * 9
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
