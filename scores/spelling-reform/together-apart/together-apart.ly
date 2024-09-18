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

    | cs4 cs8 r4 d8 d8 r4
    | e4 e8 r4 fs8 fs8 r4
    | g4 g8 r4 a8 a8 r4
    | b4 b8 r4 cs8 cs8 r4

    \time 12/8

    | d8 d d d d d d d d d4. \glissando

    | R1. * 3

    | r2. c,4 b8 ~ b4.
    | a8 ( g ) e ~ e4. ~ e2.

    | R1.
    | r2. r4. r8 e' ( es )
    | fs1.

    | R1. * 3
    | a2. a4. g4 e8 ~
    | e2. c4 b8 ~ b4.
    | a8 ( g ) e ~ e4. ~ e2.

    | f'1.~
    | f2. ~ f4. ~ f8 e ( es )
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
    | \appoggiatura <d g ~>8 <e g>4. <d g> b4 a8 ~ a4 g8 ~
    | g4. ~ g4 d8 ( e4 ) g8 ~ g4.
    | c4. b a4 ( g8 ) ~ g4.

    | \appoggiatura <d' g ~>8 <e g>4. <d g> b4 a8 ~ a4 g8 ~
    | g4. ~ g4 d8 ( e4 ) g8 ~ g4.
    | b4 a g a ( g ) d 
    | b'4 a ( g ) c b ( g )

    | \appoggiatura <d' g ~>8 <e g>4. <d g> b4 a8 ~ a4 g8 ~
    | g4. ~ g4 d8 ( e4 ) g8 ~ g4.

    | b1. ~
    | b2. ~ b4. ~ b8 b ( c ) (
    | b1. )
    | b8 ( c ) ( b ) a ( b ) ( a ) ef4. r

    | R1.
    | r2. r4 <g' d'>8 ~ <g d'> r <g b>8
    | r4 r8 r4. r2.
    | R1.

    | r2. c,4 b8 ~ b4.
    | a8 ( g ) e ~ e4. ~ e2.

    | R1.
    | r2. r4. r8 e' ( es )
    | fs1.
    | r4 <g d'>8 ~ <g d'> r4 <g b>8 r4 r4.

    | <g d'>4 <g d'>8 <g d'>4 <g b>8 r4 <g d'>8 ~ <g d'>4.
    | gs1.

    | R1.
    | r2. c,4 b8 ~ b4.
    | a8 ( g ) e ~ e4. ~ e2.

    | f'1.~
    | f2. ~ f4. ~ f8 e ( es )
    | fs1.
    | R1.

    | c,4. b a g
    | d'4. c b a
    | c4. b a g
    | d'4. c b a

    | c4. b a g
    | d'4. c b a
    | a1. ~
    | a1. 

    | b'1.
    | c4. r r2.

    | e1.
    | \appoggiatura <d g ~>8 <e g>4. <d g> b4 a8 ~ a4 g8 ~
    | g4. ~ g4 d8 ( e4 ) g8 ~ g4.
    | c4. b a4 ( g8 ) ~ g4.

    | \appoggiatura <d' g ~>8 <e g>4. <d g> b4 a8 ~ a4 g8 ~
    | g4. ~ g4 d8 ( e4 ) g8 ~ g4.
    | b4 a g a ( g ) d 
    | b'4 a ( g ) c b ( g )

    | \appoggiatura <d' g ~>8 <e g>4. <d g> b4 a8 ~ a4 g8 ~
    | g4. ~ g4 d8 ( e4 ) g8 ~ g4.

    | b1. ~
    | b2. ~ b4. ~ b8 b ( c ) (
    | b1. )
    | b8 ( c ) ( b ) a ( b ) ( a ) ef4. r
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
