\version "2.25.10"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Awake"
  subtitle = "Tomo Choco"
  composer = "Ashley Cubbler"
  arranger = "Ben Rosen, bass"
}

music = \relative g, {
  \key c \major
  \time 4/4
  \clef "bass"

  | g8. -> g16 -> ~ g g g8 -> ~ g16 g8 -> g16 g -> e f fs
  | g8. -> g16 -> ~ g g g8 -> ~ g16 g8 -> g16 g -> e f fs
  | g8. -> g16 -> ~ g16 e a8 ~ a bf8 ~ bf16 c8.
  | c16 ( d8 ) d16 ~ d a e'8 ~ e f4 g8

  | g,8. -> g16 -> ~ g e g8 -> r16 c d e f e d c
  | g8. -> g16 -> ~ g e g8 -> r16 c d e f d e d
  | g,8. -> g16 -> ~ g e g8 -> r16 c d e f e d c
  | g8. -> g16 -> ~ g8 \glissando g' -> ~ g16 g8 -> d16 g4 -> \glissando

  | g,8. -> g16 -> ~ g e g8 -> r16 c d e f e d c
  | g8. -> g16 -> ~ g e g8 -> r16 c d e f d e d
  | g,8. -> g16 -> ~ g e g8 -> r16 c d e bf' -> d, -0 a' -> g -0
  | f8 -> f16 e -> ~ e e16 d8 -> d16 c8 -> c16 bf -> ( c ) bf8

  | g8. -> g16 -> ~ g g g'8 -> r16 g,8 -> g16 g' -> e, f fs
  | g8. -> g16 -> ~ g g g'8 -> r16 g,8 -> g16 g' -> e, f fs
  | g8. -> g16 -> ~ g16 e a8 ~ a bf8 ~ bf16 c8.
  | c16 ( d8 ) d16 ~ d a e'8 ~ e f4 f'16 fs (

  | g16 ) d, -0 c' cs ( d ) f d8 r16 g,8 -0 g16 g'16 g, f' fs (
  | g16 ) d, c' cs ( d ) f d8 r16 g,8 g16 g'16 g, f' fs (
  | g16 ) d, c' cs ( d ) f d8 r16 g,8 -0 g16 g'16 d g,8 -1

  | g,8. -> g16 -> ~ g g g8 -> ~ g16 g8 -> e16 g -> e g8 ->
  | c8. -> c16 -> ~ c c c8 -> ~ c16 c8 -> \xNote c16 d ( e ) g  a (
  | b16 ) -> b b e, -> ~ e e b'16 -> b b e,8 -> e16 b' -> a, -0 d8 ->
  | c8. -> c16 -> ~ c c c8 ->  ~ c d16 ( e ) g a ( b ) d

  | e16 -> e e d -> ~ d d c ->  c c b8 -> d,16 -0 a' ( b ) a ( d, ) -0
  | <<
    {
      s16 d -0 s d -> ~ d s d -> s s d8 -> s16 d -0
    } \\ {
      d16 -> -1 s d s s d s d d s8 d16
    }
  >>
  a -0 a' ( b ) (
  | c16 ) -> c c b -> ~ b b a -> a a b8 -> a,16 -0 a'8 -> g ->
  | f16 -> f f f -> r8 f16 -> f f f8 -> c16 f -> c f, fs
  | g16 -> g g g -> r e g -> g g g -> r e g8 -> g ->

  | R1 * 2
  | R1 * 3
  | r2 r4 r16 g8 -> e16

  | g8. -> g16 -> ~ g e g8 -> ~ g16 g' ( a ) d, -0 c' ( d8 ) d,16
  | g,8. -> g16 -> ~ g e g8 -> ~ g16 a' ( bf ) d, d' ( e8 ) d,16
  | g,8. -> g16 -> ~ g e g8 -> ~ g16 bf' ( c ) d, f' ( e8 ) d,16
  | g,8. -> g16 -> ~ g e g8 -> ~ g16 g' ( a ) d, c' ( d8 ) d,16

  | g,8. -> g16 -> ~ g8 \acciaccatura { g'16 } a8 -- ~ a g4 -- f8 -- ~
  | f d4 -- c -- a8 g r
  | R1

  | g'16 -> g g g -> r8 g16 -> g g g8. -> g8 -> \glissando g, \glissando
  | g'16 -> g g g -> r8 g16 -> g g g8. -> g8 -> d \glissando

  | g,8. -> g16 -> ~ g e g8 -> r16 c d e f e d c
  | g8. -> g16 -> ~ g e g8 -> r16 c d e f d e d
  | g,8. -> g16 -> ~ g e g8 -> r16 c d e f e d c
  | g8. -> g16 -> ~ g e g8 -> r16 c d e f d e d

  | g,8. -> g16 -> ~ g e g8 -> ~ g16 g8 -> e16 g8 -> g ->

  | d''16 -> d d d -> ~ d d, -0 d' -> d d d8 -> d,16 d' -> d d, d
  | d'16 ->  d d d -> ~ d d, d' -> d d d8 -> d,16 d' -> d, d'8 ->

  | c,8. -> c16 -> ~ c a c8 -> ~ c16 c8 -> a16 d ( e ) g a (
  | d16 ) -> d d g, -> ~ g g d'16 -> d d g,8 -> g16 d' -> g, d8
  | c8. -> c16 -> ~ c a c8 -> ~ c16 c8 -> d16 ( e ) g ( a ) b

  | e16 -> e e d -> ~ d d c ->  c c b8 -> d,16 -0 a' ( b ) a ( d, ) -0
  | <<
    {
      s16 d -0 s d -> ~ d s d -> s s d8 -> s16 d -0
    } \\ {
      d16 -> -1 s d s s d s d d s8 d16
    }
  >>
  a -0 a' ( b ) (
  | c16 ) -> c c b -> ~ b b a -> a a b8 -> a,16 -0 a'8 -> g ->
  | f16 -> f f f -> r8 f16 -> f f f8 -> c16 f -> c f, fs
  | g16 -> g g g -> r e g -> g g g -> r e g8 -> g ->

  \bar "||"
  \key g \major

  | r8 d'''16 -> ^\markup \tiny "D" ( b ) d,, -0 b'' -> ( a ) ( g, ) -0 e' -> ( fs) ( g ) e ( -> d, ) -0 a -0 d' -> ( b )
  | r8 d'16 -> ( b ) d,, b'' -> ( a ) ( g, ) e' -> ( fs ) ( g ) a -> d,, a b' -> ( a )
  | r8 d'16 -> ( b ) d,, b'' -> ( a ) ( g, ) e' -> ( fs ) ( g ) e -> ( d, ) a d' -> ( b )
  | r8 d'16 -> ( b ) d,, b'' -> ( a ) ( g, ) e' -> g fs e d, -0 c' b a

  | r8 d'16 -> ( b ) d,, b'' -> ( a ) ( g, ) e' -> ( fs ) (  g ) e ( -> d, ) a d' -> ( b )
  | r8 d'16 -> ( b ) d,, b'' -> ( a ) ( g, ) e' -> ( fs ) ( g ) a -> d,, a c'' -> ( b )
  | r8 d16 -> ( b ) d,, b'' -> ( a ) ( g, ) e' -> ( fs ) ( g ) e ( -> d, ) a d' -> ( b )
  | r8 d'16 -> ( b ) d,, b'' -> ( a ) ( g, ) d -> c'' b a g fs e d -> ~

  | d1

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
