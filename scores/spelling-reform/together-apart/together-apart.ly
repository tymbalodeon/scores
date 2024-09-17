\version "2.25.17"

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
    \time 9/8

    | cs4 cs8 r4 d8 d4 r8
    | e4 e8 r4 fs8 fs4 r8
    | g4 g8 r4 a8 a4 r8
    | b4 b8 r4 cs8 cs4 r8

    \time 12/8

    | d8 d d d d d d d d d4.

    | R1. * 2

    | r2. c,4. b4.
    | a4 ( g4. ) e8 ~ e2.

    | R1.
    | r2. r4. r8 e' es
    | fs1.

    | R1. * 3
    | a2. a4. g4 e8 ~
    | e2. c4 b8 ~ b4.
    | a4 ( g8 ) ~ g4 e8 ~ e2.

    | f'1.~
    | f2. ~ f4. ~ f8 e es
    | fs1.

    | c,4. b a g
    | d'4. c b a
    | c4. b a g
    | d'4. c b a

    | c4. b a g
    | d'4. c b a
    | a1. ~
    | a1. 

    | b'1.
    | c1.

    | d1.
    | e4. d b4 a8 ~ a4 g8 ~
    | g4. ~ g4 d8 e4 g8 ~ g4.
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
