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
    | e8 e16 r8 fs16 fs8 r16
    | g8 g16 r8 a16 a8 r16
    | b8 b16 r8 cs16 cs8 r16

    \time 12/16

    | d16 d d d d d d d d d8.

    | R2. * 4

    | r4. c,8 b16 ~ b8.
    | a16 ( g ) e ~ e8. ~ e4.

    | R2.
    | r4. r8. r16 e' es
    | fs2.

    | R2. * 3
    | a4. a8. g8 e16 ~
    | e4. c8 b16 ~ b8.
    | a16 ( g ) e ~ e8. ~ e4.

    | f'2.~
    | f4. ~ f8. ~ f16 e es
    | fs2.

    | c,8. b a g
    | d'8. c b a
    | c8. b a g
    | d'8. c b a

    | c8. b a g
    | d'8. c b a
    | a2. ~
    | a2. 

    | b'2.
    | c2.

    | d2.
    | e8. d b8 a16 ~ a8 g16 ~
    | g8. ~ g8 d16 e8 g16 ~ g8.
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
