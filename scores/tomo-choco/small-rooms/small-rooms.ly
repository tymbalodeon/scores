\version "2.25.10"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Small Rooms"
  subtitle = "Tomo Choco"
  composer = "Ashley Cubbler"
  arranger = "Ben Rosen, bass"
}

music = \relative c, {
  \key f \major
  \time 4/4
  \clef "bass"

  | R1 * 4

  | f4. r16 \xNote f f8 f4.
  | f4. r16 \xNote f f8 g a bf
  | c4. r16 g c \xNote c g8 a c ~
  | c g c4 ~ c8. g16 c \xNote c g ( a )

  | df8 df4 af16 a bf8 bf4 c8
  | df8 df4 af'16 df, df' af df,4 ef16 af,
  | df8 df4 f8 df' f, af, g

  | f4. r16 \xNote f f8 f4.
  | f4. r16 \xNote f f8 f4 f16 \glissando af
  | df8 df4 ef16 ( f ) bf f bf,4 c8
  | df8 df8 ~ df8. af16 df af df4 af'8 (

  \time 2/4

  | df4 ) af,8 a

  \time 4/4

  | bf4. f'16 bf, bf' ( c8. ) ~ c f,16
  | c'16 ( d8. ) ~ d4 f r

  | f,,4. r16 \xNote f f8 f4.
  | f4. r16 \xNote f f8 f4.
  | f4. r16 \xNote f f8 f4.
  | f4. r16 \xNote f f8 g a c

  | f4 ~ f16 c g' ( gs ) a4 ~ a16 c, a' ( bf )
  | c4 ~ c8. f,16 c'8 g, a bf
  | c4. r16 g c \xNote c e8 g c, ~
  | c g c4 ~ c8. g16 c \xNote c g ( a )

  | df8 df4 af16 a bf8 bf4 c8
  | df8 df4 af'16 df, df' af df,4 ef16 af,
  | df8 df4 f8 df'4 ef
  | \appoggiatura ef16 f2 r8 af, ( g4 )

  | f,4. r16 \xNote f f8 f4.
  | f4. r16 \xNote f f8 f4.
  | f4. r16 \xNote f f8 f4.
  | f4. r16 \xNote f f8 g a c
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
