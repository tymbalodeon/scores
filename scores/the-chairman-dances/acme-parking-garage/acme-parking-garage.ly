\version "2.25.19"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
    title = "Acme Parking Garage"
    subtitle = "The Chairman Dances"
    composer = "Eric Krewson"
    arranger = "Will Schwarz, bass"
}

music = \relative c {
    \clef "bass"
    \key g \major

    \time 2/2

    | g1 ~
    | g2 ~ g8 g g a
    | bf1 ~
    | bf8 f bf c bf4. a8

    | g1 ~
    | g2 ~ g8 g g a
    | bf1 ~
    | bf1

    | R1 * 4
    | bf1 ~
    | bf2 ~ bf8 bf bf a

    | g8 r4. r2
    | g8 r4. r8 g8 r g
    | g8 r4. r2
    | R1 * 2

    | bf1 ~
    | bf1 ~
    | bf1 ~
    | bf2 ~ bf8 bf bf a

    | g8 r4. r2
    | R1

    \mark \default

    | r8 bf c bf c r4 c8
    | bf8 c bf c r bf c bf
    | r8 bf c bf c r bf bf
    | r8 c d c d r d c

    | r8 bf c bf c r4 c8
    | bf8 c bf c r bf c bf
    | r8 bf c bf c r bf bf
    | r8 c d c d r d r

    | g1
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
