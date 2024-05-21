\version "2.25.15"

smallRoomsBass = \relative c, {
  \key f \major
  \time 4/4
  \clef "bass"

  | R1 * 4

  | f4. r16 \xNote f f8 -. f4. --
  | f4. r16 \xNote f f8 -. g -- a -- bf --
  | c4. r16 g c \xNote c g8 a c ~
  | c g c4 ~ c8. g16 c \xNote c f, ( g )

  | df'8 -. df -- ~ df16 \xNote df af16 a bf8 -. bf4 -- c8 -.
  | df8 -. df4 -- af'16 df, df' af df,4 ef16 af,
  | df8 -. df4 -- af'8 ( df ) f, af, g

  | f4. r16 \xNote f f8 -. f4. --
  | f4. r16 \xNote f f8 -. f4 -- f16 ( g )
  | df'8 -. df4 -- ef16 ( f ) bf f bf,4 c8
  | df8 -. df8 -- ~ df8. af16 df af df4 af'8 (

  \time 2/4

  | df4 ) af,8 a

  \time 4/4

  | bf4. f'16 bf, bf' ( c8. ) ~ c8 c16 f,
  | c'16 ( d8. ) ~ d4 f bf, \glissando

  | f,4. r16 \xNote f f8 -. f4. --
  | f4. r16 \xNote f f8 -. f4. --
  | f4. r16 \xNote f f8 -. f4. --
  | f4. r16 \xNote f f8 -. \appoggiatura g16 a8 -- c -- d --

  | f4 ~ f16 c g' ( gs ) a4 ~ a16 c, a' ( bf )
  | c4 ~ c8. f,16 c'8 -. g, -- a -- bf --
  | c4. r16 g c8 -. e -. -- g -. -- c, ~
  | c g c4 ~ c8. g16 c \xNote c f, ( g )

  | df'8 -. df -- ~ df16 \xNote df af16 a bf8 -. bf4 -- c8 -.
  | df8 -. df4 -- af'16 df, df' af df,4 ef16 af,
  | df8 -. df4 -- af'8 df4 ef
  | \appoggiatura ef16 f2 r8 bf, ( af4 ) \glissando

  | f,4. r16 \xNote f f8 -. f4. --
  | f4. r16 \xNote f f8 -. f4. --
  | f4. r16 \xNote f f8 -. g -- a -- bf --

  | c4. r16 g c \xNote c g8 a c ~
  | c g c4 ~ c8. g16 c \xNote c f, ( g )

  | df'8 -. df -- ~ df16 \xNote df af16 a bf8 -. bf4 -- c8 -.
  | df8 -. df4 -- c'16 f, df' af df,4 af'16 af,
  | df8 f af bf16 f c'16 ( df8 ) \xNote f,16 df' ( ef8 ) \xNote f,16
  | ef'16 ( f8. ) ~ f4 r16 g ( a ) c bf ( a ) f a,, -0
  | c'16 g' bf, ( a ) ~ a8 d,16 ( c ) ~ c2 \glissando

  | f,4. r16 \xNote f f8 -. f4. --
  | f4. r16 \xNote f f8 -. f4. --
  | f4. r16 \xNote f f8 -. f4. --
  | f4. r16 \xNote f f8 -. f4. --

  | R1
  | r2 r8 f -- g -- a --
  | bf4. r16 f bf8 -. bf -- ~ bf16 e ( f ) f,
  | bf4. r16 f bf8 a g c

  | f,4. r16 \xNote f f8 -. f4. --
  | f4. r16 c' f8 -. f, -- g -- a --
  | bf4. r16 f bf8 -. bf -- ~ bf16 \xNote f a8
  | g4 r8 d' bf' a g c,

  | a'' ( g ) f e16 d ~ d8 ( c ) a g16 ( f ) ~
  | f8 g a c, f f, g a
  | c4. r16 g c \xNote c g8 a c ~
  | c g c4 ~ c8. g16 c \xNote c f, ( g )

  | df'8 -. df -- ~ df16 \xNote df af16 a bf8 -. bf4 -- c8 -.
  | df8 -. df4 -- af'16 df, df' af df,8 af g

  | f4. r16 \xNote f f8 -. f4. --
  | f4. r16 \xNote f f8 -. f4. --
  | f4. r16 \xNote f f8 -. f4. --
  | f4. r16 \xNote f f8 -. f4 -- c'8 \glissando

  | f1

  \bar "|."
}
