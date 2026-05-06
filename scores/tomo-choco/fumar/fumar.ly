\version "2.25.34"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
    title = "Fumar"
    subtitle = "Tomo Choco"
    composer = "Ashley Hartman"
    arranger = "Ben Rosen, bass"
}

music = \relative c' {
    \clef bass
    \key af \major
    \time 6/8

    | bf8. bf8 -. f16 bf8. bf8 -. f16
    | bf8. bf8 -. f16  bf8 c df
    | ef,8. ef8 -. bf'16 ef16 ef8 ef bf16
    | af8. ^\markup \italic sim. af8 ef16 af8 r16 ef af a

    | bf8. bf8 f16 bf,8 df f
    | af,8. af8 ef'16 af8 r16 ef af, ( a )
    | bf8. bf8 bf16 \glissando bf' af8 f8.

    \mark \markup \box \bold \tiny VERSE

    | bf,8. bf8 f'16 bf8 ef,16 ( f ) af f
    | af ( bf8 ) ( c16 ) ~ c f, bf f c'8 df
    | ef,8. ef8 bf'16 ef16 ef8 ef bf16
    | af8. af8 ef16 af8 r16 ef af a

    | bf8. bf8 f16 bf8 df, f
    | af,8. af8 ef'16 af8 r16 ef af, ( a )
    | bf8. c df8 ef16 ( f8. )

    | bf,8. bf8 f'16 df' c8 bf f16
    | bf,8. bf8 f16 bf8 c df
    | ef8. ef8 bf'16 ef16 ef8 ef bf16
    | af8. af8 ef16 af8 r16 ef af a

    | bf8. bf8 f16 bf,8 df' f
    | af,8. af8 ef16 af,8 af16 af' af, a
    | bf8. f' c'8 df16 ( ef8. )

    \mark \markup \box \bold \tiny CHORUS

    | ef16 ( f ) ~ f4 r8 r16 ef, ( f8 )
    | f,8 c'4 -> \glissando ( af'8 ) af, -> af ->
    | df8. af' \glissando ( df ) df,
    | ef8 bf'16 ef ( f8 ) f16 ( g8 ) g16 ( af8 )

    | R2.
    | r4 r16 bf,, \glissando bf' af8 f8.

    \mark \markup \box \bold \tiny VERSE

    | bf,8. bf8 f'16 bf8 ef,16 ( f ) af f
    | af ( bf8 ) ( c16 ) ~ c f, bf f c'8 df
    | ef,8. ef8 bf'16 ef8 df16 ( c8 ) bf16
    | af8. af8 ef16 af8 r16 ef af a

    | bf8. bf8 f16 bf8 df, f
    | af,8. af8 ef'16 af8 r16 ef af, ( a )
    | bf8. c df8 ef16 ( f8. )

    | bf,8. bf8 f'16 df'8 c bf
    | bf,8. bf8 f16 bf8 c df
    | ef8. ef8 bf16 ef16 g, ( af ) bf c ( ef )
    | af,8. af8 ef'16 af8 r16 ef af a

    | bf8. bf8 f16 bf,8 df' f
    | af,8. af8 ef16 af,8 af16 af' af, a
    | bf8. f' c'8 df16 ( ef8. )

    \mark \markup \box \bold \tiny CHORUS

    | ef16 ( f ) ~ f4 r8 r16 ef, ( f8 )
    | f,8 c'4 -> \glissando ( af'8 ) af, -> af ->
    | df8. af' \glissando ( df ) df,
    | ef8 bf16 ef ( df8 ) df16 ( c8 ) bf16 ( af8 )

    \mark \markup \box \bold \tiny SOLO

    | bf16 bf8 bf f16 <bf f'>4.
    | bf16 bf8 bf f16 <bf f'>4.
    | df16 df8 df af16 <df af'>4.
    | ef8 bf16 ef ( f8 ) f16 ( g8 ) g16 ( af8 )

    | bf,16 bf8 bf f16 <bf f'>4.
    | bf16 bf8 bf f16 <bf f'>4.
    | df16 df8 df af16 <df af'>4.
    | ef8 bf16 ef ( f8 ) f16 ( g8 ) g16 ( af8 )

    | bf,16 bf8 bf f16 \glissando bf'16 af8 f8.
    | bf,16 bf8 bf f16 \glissando bf'16 af8 f8.
    | df16 df8 df af16 \glissando bf'16 af8 f8.
    | ef8 bf'16 ef ( f8 ) f16 ( g8 ) g16 ( af8 )

    \mark \markup \box \bold \tiny CHORUS

    | af,16 ( bf ) bf df ef ( f ) af ( bf ) bf bf ef, ( f )
    | f,,8 c'4 -> \glissando ( af'8 ) af, -> af ->
    | df8. af' \glissando ( df ) df,
    | ef8 bf'16 ef ( df8 ) df16 ( c8 ) bf16 ( af8 )

    \mark \markup \box \bold \tiny OUTRO

    | bf8. bf8 f16 bf8. bf8 f16
    | bf8. bf8 f16  bf8 c df
    | ef,8. ef8 bf16 ef8 df c \glissando
    | af'2.

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

