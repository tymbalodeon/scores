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

    | bf8. bf8 -. f16 bf8 r16 bf bf f16
    | bf8. bf8 -. f16  bf8 c df
    | ef,8. ef8 -. bf'16 ef16 ef8 ef bf16
    | af8. ^\markup \italic sim. af8 ef16 af8 r16 ef af a

    | bf8. bf8 f16 bf,8 df' f
    | af,8. af8 ef16 af,8. af'16 af, a
    | bf4 r16 bf \glissando bf'16 bf af r f ef

    \mark \markup \box \bold \tiny VERSE

    | bf8. bf8 f'16 bf8 ef,16 ( f ) af f
    | af ( bf8 ) ( c16 ) ~ c f, bf f c'8 df
    | ef,8. ef8 bf'16 ef16 ef8 ef bf16
    | af8. af8 ef16 af8 r16 ef af a

    | bf8. bf8 f16 bf8 c, ef
    | af,8. af8 ef'16 af8. ef16 af, ( a )
    | bf4 r16 bf \glissando bf'16 bf af r f ef

    | bf8. bf8 f'16 df' c8 bf f16
    | bf,8. bf8 f16 bf8 c df
    | ef8. ef8 bf'16 ef16 ef8 ef bf16
    | af8. af8 ef16 af8 r16 ef af a

    | bf8 r8. f16 bf,8 df' f
    | af,8. af8 ef16 af,8 af16 af' af, a
    | bf8. bf' c8 df16 ( ef8. )

    \mark \markup \box \bold \tiny CHORUS

    | ef16 ( f ) ~ f4 r8 bf,,16 ( c ) ef ( f )
    | f,8 c'4 -> \glissando af'8 af, -> af ->
    | df8. af' \glissando df df,
    | ef8 bf'16 ef ( f8 ) f16 ( g8 ) g16 ( af8 )

    | R2.
    | r4 r16 bf,, \glissando bf'16 bf af r f ef

    \mark \markup \box \bold \tiny VERSE

    | bf4 ~ bf16 f' bf8 ef,16 ( f ) af f
    | af ( bf8 ) c16 ~ c f, bf8 c df
    | ef,4 r16 bf'16 ef16 df8 c bf16
    | af8 r8. ef16 af8 r16 ef af a

    | bf8 r8. f16 bf8 c, ef
    | af,8 r8. ef'16 af8 af, a
    | bf4 r8 bf'16 bf af r f ef

    | bf4 ~ bf16 f' df'8 c bf
    | bf,4 ~ bf16 f bf8 c df
    | ef4 ~ ef 16 bf' g'16 ( af ) ( g ) f ef c
    | af8 r8. ef16 af8 r16 ef af a

    | bf8 r8. f16 bf,8 df' f
    | af,8 r8. ef16 af8 af, a
    | bf4 ~ bf16 f bf8 bf16 bf8.

    \mark \markup \box \bold \tiny CHORUS

    | r4. r8 bf16 ( c ) ef ( f )
    | f,8 c'4 af'8 af, af
    | df8. af' df df,
    | ef8 bf'16 ef ( f8 ) f16 ( g8 ) g16 ( af8 )

    \mark \markup \box \bold \tiny SOLO

    | bf,,16 bf8 bf f16 <bf f'>4.
    | bf16 bf8 bf f16 <bf f'>4.
    | df16 df8 df af16 <df af'>4.
    | ef8 bf16 ef ( f8 ) f16 ( g8 ) g16 ( af8 )

    | bf,16 bf8 bf f16 <bf f'>4.
    | bf16 bf8 bf f16 <bf f'>4.
    | df16 df8 df af16 <df af'>4.
    | ef8 bf16 ef ( f8 ) f16 ( g8 ) g16 ( af8 )

    | bf,16 bf8 bf f16 <bf f'>4.
    | bf16 bf8 bf f16 <bf f'>4.
    | df16 df8 df af16 <df af'>4.
    | ef8 bf16 ef ( f8 ) f16 ( g8 ) g16 ( af8 )

    \mark \markup \box \bold \tiny CHORUS

    | r4. r8 bf,16 ( c ) ef ( f )
    | f,8 c'4 af'8 af, af
    | df8. af' df df,
    | ef8 bf'16 ef ( f8 ) f16 ( g8 ) g16 ( af8 )

    \mark \markup \box \bold \tiny OUTRO

    | bf,8 r8 bf16 f bf8 r16 bf bf f16
    | bf8 r8 bf16 f bf8 c df
    | ef,4 r16 bf16 ef8 df c
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

