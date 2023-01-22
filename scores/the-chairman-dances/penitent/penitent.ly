\version "2.24.0"

\include "settings.ily"

\header {
  title = "Penitent"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

music = \relative c' {
    \clef "bass"
    \time 6/8

    | R1.

    e4 f8 ~ f4.
    e4 f8 ~ f4 d8
    e4. ~ e4 d8
    c2.
    e4 f8 ~ f4 d8
    e4 f8 ~ f4 d8
    e4. ~ e4 d8
    c4. ~ c4 a8
    f,2.
    f4. ~ f4 f8
    c'2.
    c4. ~ c4 c,8
    f4. ~ f4 c8
    f4. ~ f4 f8
    c'4. ~ c4 c,8
    c'2. \repeat volta 2 {

        \time 6/8  a'8 ~ \times 2/3 {
            a8 f16 ~ }
        f8 c'8 ~ \times 2/3 {
            c8 a16 ~ }
        a8
        e'8 ~ \times 2/3 {
            e8 c16 ~ }
        c8 g'8 ~ \times 2/3 {
            g8 e16 ~ }
        e8
        b'8 ~ \times 2/3 {
            b8 g16 ~ }
        g8 d'8 ~ \times 2/3 {
            d8 a16 ~ }
        a8
        g8 ~ \times 2/3 {
            g8 e16 ~ }
        e8 d8 ~ \times 2/3 {
            d8 c,16 ~ }
        c8 }
    \repeat volta 2 {

        a'8 ~ \times 2/3 {
            a8 f16 ~ }
        \times 2/3  {
            f8 a,16 }
        c'8 ~ \times 2/3 {
            c8 a16 ~ }
        \times 2/3  {
            a8 a,16 }

        e''8 ~ \times 2/3 {
            e8 c16 ~ }
        \times 2/3  {
            c8 a,16 }
        g''8 ~ \times 2/3 {
            g8 e16 ~ }
        \times 2/3  {
            e8 c,,16 }

        b'''8 ~ \times 2/3 {
            b8 g16 ~ }
        \times 2/3  {
            g8 c,,,16 }
        d'''8 ~ \times 2/3 {
            d8 a16 ~ }
        \times 2/3  {
            a8 c,,,16 }
        }
    \alternative { {

            g'''8 ~ \times 2/3 {
                g8 e16 ~ }
            \times 2/3  {
                e8 c,,16 }
            d''8 ~ \times 2/3 {
                d8 c,16 ~ }
            c8 }
        {

            g''8 ~ \times 2/3 {
                g8 e16 ~ }
            \times 2/3  {
                e8 c,,16 }
            d''8 ~ \times 2/3 {
                d8 c,,16 ~ }
            c8 }
        }
    f4. ~ f4 c8
    f4. ~ f4 c8
    c'4. ~ c4 c,8
    c'4. ~ c4 c,8 \repeat volta 2 {

        f4 ~ \once \omit TupletBracket
        \times 2/3  {
            f8 c16 }
        \times 2/3  {
            c''8 d16 ~ }
        \times 2/3  {
            d8 a16 }
        \times 2/3  {
            e'8 c,,16 }

        f4 ~ \once \omit TupletBracket
        \times 2/3  {
            f8 c16 }
        \times 2/3  {
            g'8 a16 }
        d,8 e8
        c'4 ~ \once \omit TupletBracket
        \times 2/3  {
            c8 c,16 }
        e''8 ~ \times 2/3 {
            e8 c16 ~ }
        c8
        c,4 ~ \once \omit TupletBracket
        \times 2/3  {
            c8 c,16 }
        e''8 ~ \times 2/3 {
            e8 c16 ~ }
        c8 }

    f,,4 e'8 f4 a8
    \once \omit TupletBracket
    \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
    \times 3/4  {
        c8 d8 e8 f8 }
    \once \omit TupletBracket
    \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
    \times 3/4  {
        g8 a8 b8 c8 }

    e2.

    R1 * 3

    r4. r8 a,,,8 c8 \bar ""
    \key d \minor d4. e4.
    f4. f8 g8 a8
    bf4 ~ \once \omit TupletBracket
    \times 2/3  {
        bf8 f16 }
    \acciaccatura { bf8 ( } c8 ) \times 2/3 {
        bf8 a16 }
    bf8
    g4 \once \omit TupletBracket
    \times 2/3  {
        \acciaccatura { a'8*3/2 ( } bf8 ) a16 }
    \times 2/3  {
        g8 d16 }
    \times 2/3  {
        bf8 a16 }
    g8
    d4. e4.
    f4 c8 f8 a8 c8
    d4. ~ \times 2/3 {
        d8 c16 }
    \times 2/3  {
        d8 e16 }
    \times 2/3  {
        f8 g16 }

    \times 2/3  {
        a8 bf16 }
    \times 2/3  {
        a8 f16 }
    \times 2/3  {
        g8 af16 }
    \times 2/3  {
        g8 f16 }
    \times 2/3  {
        d8 a,16 }
    \times 2/3  {
        c8 a16 }

    d4 \acciaccatura { c'8 ( } d8 ) c8 ~ \times 2/3 {
        c8 d16 }
    c8
    a4 \grace { g16 ( } a8 ) c8 d8 g,8
    f4 a,8 bf8 c8 d8
    e8 f8 g8 a8 bf8 \times 2/3 {
        c8 c,16 }

    \times 2/3  {
        d8 f'16 ~ }
    f8 ~ \times 2/3 {
        f8 d,16 }
    \times 2/3  {
        e8 g'16 ~ }
    g8 ~ \times 2/3 {
        g8 e,16 }

    \times 2/3  {
        f8 a'16 ~ }
    a8 ~ \times 2/3 {
        a8 f,16 }
    \times 2/3  {
        a'8 g16 }
    \times 2/3  {
        f8 e16 }
    d8
    bf8 a'4 bf,8 a'8 bf,8
    g8 a8 bf8 a8 g8 f8
    d,8 d8 \times 2/3 {
        d8 c16 }
    e8 e8 \times 2/3 {
        e8 c16 }

    f8 f8 \times 2/3 {
        f8 c16 }
    f8 g8 a8
    bf8 d8 f8 d''8 c8 bf8
    a8 f8 d8 c8 bf8 a8
    d,,8 a'8 d8 e,8 e'8 c8
    f,8 a'8 g8 f8 e8 c8
    bf8 d'4 bf,8 d'8 bf,8
    g8 a8 bf8 a8 g8 f8
    d8 d8 \times 2/3 {
        d8 c16 }
    e8 e8 \times 2/3 {
        e8 c16 }

    f8 f8 \times 2/3 {
        f8 c16 }
    f8 g8 a8
    bf8 d8 f8 a8 bf8 c8
    g8 a8 bf8 a8 g8 f8
    d,8 d''8 c8 e,,8 e''8 c8
    f,,8 a''8 g8 f8 e8 c8
    bf,8 f'8 bf8 c'8 bf8 a8
    f8 ( g8 ) c,8 ( d8 ) <e c'>4
    <e c'>2. \bar "."
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
