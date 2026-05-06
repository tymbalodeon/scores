\version "2.25.34"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
    title = "Homebuddy"
    subtitle = "Tomo Choco"
    composer = "Ashley Hartman"
    arranger = "Ben Rosen, bass"
}

music = \relative c' {
    \clef bass
    \key f \minor

    \mark \markup \box \bold \tiny VERSE

    | R1 * 8
    | R1 * 2

    | c8. bf16 ~ bf8 af8 ~ af g c, ef
    | f8. g16 ~ g8 c, ~ c2
    | bf'8. af16 ~ af8 g8 ~ g f c df
    | ef8. df16 ~ df8 bf ~ bf2

    | c'8. bf16 ~ bf8 af8 ~ af g c, ef
    | f8. g16 ~ g8 c, ~ c2
    | df


    \bar "|."
}

\score {
    \new Staff \with {
        instrumentName = "Bass"
        \numericTimeSignature
    } {
        \compressMMRests
        \music
    }
}

