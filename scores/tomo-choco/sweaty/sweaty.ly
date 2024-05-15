\version "2.25.15"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Sweaty"
  subtitle = "Tomo Choco"
  composer = "Ashley Cubbler"
  arranger = "Ben Rosen, bass"
}

music = \relative c {
  \key af \major
  \clef "bass"

  | R1 * 4
  | R1 * 3
  | r2 r8 g8 af bf

  | df4 -. -- af -. -- df8. -. -- df16 ( ef16 ) \xNote ef  bf8
  | ef4 -. -- bf -. -- ef16 ( f8 ) ef16 ~ ef df bf8
  | df4 -. -- af -. -- df16 ef8 ( f16 ) ~ f af bf8
  | ef,8 -. -- bf16 ( c ) ef f ( g ) bf ~ bf c8 df16 ~ df ef f8

  | gf,,4. df'8 gf f ef df
  | ef4 -. -- bf -. -- ef8 -. -- f -. -- gf -. -- af -. --

  | bf,4 -. -- f' -. -- bf8. -. -- \xNote bf16 bf,8 c
  | df4 -. -- af -. -- df8. -. -- df16 af'8 df,16 d
  | ef8. -. -- ef16 g, ( af8 ) bf16 ~ bf c8 df16 ~ df ef ( f ) af
  | ef'16 ( f ) f f f f f af ( bf ) bf bf bf bf af f8

  | bf,,4 -. -- f' -. -- bf8. -. -- \xNote bf16 bf,8 c
  | df4 -. -- af -. -- df8 f, ( af ) df
  | ef4 -. -- g, -. -- bf16 ( c8 ) ef16 ~ ef bf' ( c8 )

  | ef4. bf8 af' g f ef
  | df c bf af bf f bf, c
  | df4 -. -- af -. -- df16 af'8 df16 ~ df af df,8
  | ef8. -. -- ef16 g ( af8 )  bf16 ~ bf \acciaccatura bf16 c8 bf16 ~ bf af ( g ) ef

  | df'16 ( ef8. ) ~ ef8 bf, f'' ef df c
  | bf4 -. -- f -. -- bf,8 f' f, g
  | af2 r8 df f af
  | g4 -. -- bf, -. -- ef8 g, af bf

  | df4 -. -- af' -. -- df8. af16 df,8 d
  | ef4 -. -- bf -. -- ef16 ( f8 ) ef16 ~ ef df bf8
  | df4 -. -- af -. -- df16 ef8 ( f16 ) ~ f af bf \xNote bf
  | ef,8. ef16 bf' bf, ( c ) ( df ) ef' df8 c16 ~ c bf ( af8 )

  | ef16 -> ef bf' ef, -> ~ ef ef bf' ef, -> ~ ef ef bf' ef, -> ~ ef ef bf' ef,
  | bf16 -> bf bf' bf, -> ~ bf bf bf' bf, -> ~ bf bf f' bf, -> ~ bf bf f' bf,
  | df16 -> df af' df, -> ~ df df af' af, -> ~ af af df' af, -> ~ af af df' af, (
  | g16 ) g bf' g, -> ~ g g bf' g, -> ~ g bf ( c ) ef ~ ef f ( g8 )

  | R1 * 9

  | <ef bf'>4. bf8 f'' ef df c
  | bf4 -. -- f -. -- bf, -. -- f'8 bf
  | df,4 -. -- af -. -- df8. -. -- ef16 ( f8 ) af
  | ef4 -. -- bf -. -- ef16 f8 ( g16 ) ~ g bf ( c8 )

  | <ef, bf'>4. bf8 f'' ef df c
  | bf4 -. -- f -. -- bf, -. -- f'8 bf
  | df,4 -. -- f, -. -- af8. -. -- df16 ( ef8 ) f16 bf,
  | af'16 ( bf8. ) ~ bf16 c, ( df ) af' g'16 ( af ) ( g ) ef ~ ef af, ( g8 )

  | ef16 -> ef bf' ef, -> ~ ef ef bf' ef, -> ~ ef ef bf' ef, -> ~ ef ef bf' ef,
  | bf16 -> bf bf' bf, -> ~ bf bf bf' bf, -> ~ bf bf f' bf, -> ~ bf bf f' bf,
  | df16 -> df af' df, -> ~ df df af' af, -> ~ af af df' af, -> ~ af af df' af, (
  | g16 ) g bf' g, -> ~ g g bf' g, -> ~ g af ( bf ) c ~ c df ( ef ) af,

  | df4 ~ df8 df16 af \appoggiatura ef'16 \glissando f8. af16 ~ af af ( bf8 )
  | ef,4 ~ ef8. bf16 \acciaccatura bf'16 \glissando c8. bf16 ~ bf g ( f8 )
  | df4. df8 f,8. af16 ~ af8 df
  | g,4. g8 \glissando gf'4. df'8 \glissando

  \time 2/4

  | gf8 f ef df

  \time 4/4

  | ef,1

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
