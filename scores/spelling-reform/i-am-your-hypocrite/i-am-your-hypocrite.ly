\version "2.25.17"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
    title = "I Am Your Hypocrite"
    subtitle = "Spelling Reform"
    composer = "Dan Wisniewski"
}

music = \relative g'' {
    \key g \major

    | r4 g2 g4 ~
    | g2 g ~
    | g4 g2.
    | g2. g4 ~

    \sectionLabel Verse

    | g2 g ~
    | g4 g2.
    | g2. g4 ~
    | g2 g ~

    | g4 g2.
    | g2. g4 ~
    | g2 g ~
    | g4 g2.

    | g2. g4 ~
    | g2 g ~
    | g4 g2.
    | g2. g4 ~

    | g2 g ~
    | g4 g2.
    | g2. g4 ~
    | g2 g ~

    \sectionLabel Instrumental

    | g2 g ~
    | g4 g2.
    | g2. g4 ~
    | g2 g ~

    | g4 g2.
    | g2. g4 ~
    | g2 g ~
    | g4 g2.

    | R1 * 16

    \key e \major
    \bar "||"

    | R1 * 16
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
