\version "2.25.17"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
    title = "The Grieving Game"
    subtitle = "Spelling Reform"
    composer = "Dan Wisniewski"
}

music = \relative c'' {
    \key af \major

    | R1 * 5

    \time 2/4

    | \new CueVoice \with {
        \consists "Pitch_squash_engraver"
    } { 
        \improvisationOn r4. c8 ~ 

        \time 4/4
        | c8 c c c c c c c
        | c8 c c c c c c4
    }

    \time 2/4

    | R2 * 3

    \time 4/4

    | r8 af' b, c ~ c2

    \time 2/4

    | R2 * 3

    \time 4/4

    | r8 af' b, c ~ c2

    \time 2/4

    | R2 * 3

    \time 4/4

    | r8 af' b, c ~ c2

    | R1 
    | r2. af4 (
    | bf1 ) ~
    | bf2 ef ( 

    | af,1 ) ~
    | af2. af4 ( ~
    | bf1 ) ~
    | bf2. bf4 (

    | ef1 ) ~
    | ef2. ef4 (
    | c1 ) ~
    | c2 ef (

    | bf1 ~
    | bf1

    \time 3/4

    | R2.

    \time 4/4

    | R1

    \time 3/4

    | R2.

    \time 4/4

    | R1

    \time 3/4

    | R2.

    \time 4/4

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
