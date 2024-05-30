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
  | df8 -. df4 -- af'8 ( \glissando df ) \glissando f, af, g

  | f4. r16 \xNote f f8 -. f4. --
  | f4. r16 \xNote f f8 -. f4 -- f16 ( g )
  | df'8 -. df4 -- ef16 ( f ) bf f bf,4 c8
  | df8 -. df8 -- ~ df8. af16 df af df4 af'8 ( \glissando

  \time 2/4

  | df4 ) \glissando af,8 a

  \time 4/4

  | bf4. f'16 bf, bf' ( \glissando c8. ) ~ c8 c16 f,
  | c'16 ( \glissando d8. ) ~ d4 f bf, \glissando

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
  | df8 -. df4 -- af'8 \glissando df4 ef
  | \appoggiatura ef16 f2 r8 bf, ( \glissando af4 ) \glissando

  | f,4. r16 \xNote f f8 -. f4. --
  | f4. r16 \xNote f f8 -. f4. --
  | f4. r16 \xNote f f8 -. g -- a -- bf --

  | c4. r16 g c \xNote c g8 a c ~
  | c g c4 ~ c8. g16 c \xNote c f, ( g )

  | df'8 -. df -- ~ df16 \xNote df af16 a bf8 -. bf4 -- c8 -.
  | df8 -. df4 -- \glissando c'16 \2 f, df' af df,4 ef16 af,
  | df8 \acciaccatura ef16 \glissando f8 af bf16 f c'16 ( \glissando df8 ) \xNote f,16 df' ( ef8 ) \xNote f,16
  | ef'16 ( f8. ) ~ f4 r16 g \2 ( a ) c bf ( a ) f a,, -0
  | c'16 g' bf, ( a ) ~ a8 d,16 ( \glissando c ) ~ c2 \glissando

  | f,4. r16 \xNote f f8 -. f4. --
  | f4. r16 \xNote f f8 -. f4. --
  | f4. r16 \xNote f f8 -. f4. --
  | f4. r16 \xNote f f8 -. f4. --

  | R1
  | r2 r8 f -- g -- a --
  | bf4. r16 f bf8 -. bf -- ~ bf16 e ( f ) \xNote a,
  | bf4. r16 f bf8 a g c

  | f,4. r16 \xNote f f8 -. f4. --
  | f4. r16 c' f8 -. f, -- g -- a --
  | bf4. r16 f bf8 -. bf -- ~ bf16 \xNote f a8
  | g4 r8 d' bf' \2 a g c,

  | a'' ^\markup \tiny "A" ( g ) f e16 d ~ d8 ( \glissando c ) a g16 f ~
  | f8 ( g ) a c, f g, -- a -- bf --
  | c4. r16 g c \xNote c g8 a c ~
  | c g c4 ~ c8. g16 c \xNote c f, ( g )

  | df'8 -. df -- ~ df16 \xNote df af16 a bf8 -. bf4 -- c8 -.
  | df8 -. df4 -- af'16 df, df' af df, \xNote e, af8 g

  | f4. r16 \xNote f f8 -. f4. --
  | f4. r16 \xNote f f8 -. f4. --
  | f4. r16 \xNote f f8 -. f4. --
  | f4. r16 \xNote f f8 -. f4 -- c'8 \glissando

  | f1

  \bar "|."
}
