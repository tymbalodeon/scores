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

    \time 2/4

    | g2 ~
    | g4 ~ g16 g g a
    | bf2 ~
    | bf16 f bf c bf8. a16

    | g2 ~
    | g4 ~ g16 g g a
    | bf2 ~
    | bf2

    | R2 * 4
    | bf2 ~
    | bf4 ~ bf16 bf bf a

    | g16 r8. r4
    | g16 r8. r16 g16 r g
    | g16 r8. r4
    | R2 * 4

    | bf2 ~
    | bf2 ~
    | bf2 ~
    | bf4 ~ bf16 bf bf a

    | g16 r8. r4
    | R2

    \mark \default

    | r16 bf c bf c r8 c16
    | bf16 c bf c r bf c bf
    | r16 bf c bf c r bf bf
    | r16 c d c d r d c

    | r16 bf c bf c r8 c16
    | bf16 c bf c r bf c bf
    | r16 bf c bf c r bf bf
    | r16 c d c d r d r

    \mark \default

    | R2 * 3

    | bf2 ~
    | bf4 ~ bf16 bf bf bf
    | g16 r8. r4
    | R2
    | g16 r8. r4

    | R2 * 2

    | bf2 ~
    | bf2 ~
    | bf2 
    | bf16 -. r8. r16 bf bf a
    | g16 r8. r4

    | R2 * 2

    | bf16 -. r8. r4
    | R2

    \mark \default

    \repeat volta 2 {
        | r16 bf c bf c r8 c16
        | bf16 c bf c r bf c bf
        | r16 bf c bf c r bf bf
        | r16 c d c d r d c

        | r16 bf c bf c r8 c16
        | bf16 c bf c r bf c bf
        | r16 bf c bf c r bf bf
        | r16 c d c d r d c
    }

    \key f \major
    \bar ||

    | f,2 ~
    | f2
    | af2 ~
    | af4 ef'
    | af4 af8 g

    | f4 ~ f8. c16
    | f,2 ~
    | f2

    | af4 ~ af8. d16
    | af'16 d8 af16 ~ af d, af8

    | g2 ~
    | g4. g8 \glissando

    | bf2 ~
    | bf2

    | g'4 g
    | f f
    | bf bf

    | g4 g
    | f f
    | bf bf

    | g8. d16 g d g,8
    | f'8. c16 f,8 c'
    | bf'8. f16 bf,8 f'

    | g8. d16 g d g,8
    | f'8. c16 f,8 c'
    | bf'8. f16 bf,8 f'

    \repeat volta 4 {
        | g16 g g g g g g g
        | f16 f f f f f f f
        | bf16 bf bf bf bf bf bf bf
    }
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
