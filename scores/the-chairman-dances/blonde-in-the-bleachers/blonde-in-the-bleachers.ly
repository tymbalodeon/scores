\version "2.25.5"

\include "settings.ily"

\header {
  title = "Blonde In The Bleachers"
  composer = "Joni Mitchell"
  arranger = "Eric Krewson (The Chairman Dances); Ben Rosen, bass"
}

music = \relative c'' {
  \key ef \major

  r4 bf8 c8 bf8 g4 c,8 ~
  c4. g'8 ~ g8 g8 f8 ef8

  \clef "bass"

  af,,1 ~
  af8 bf4 bf8 bf8 f8 bf8 f'8 ~
  f8 bf,8 \acciaccatura { bf'8 ( } c8 ) bf8 ~ bf2
  f1
  f'1

  \clef "bass"

  f,,2 ~ f8 f8 bf8 b8
  c8 g8 c4 bf8 c4 g8
  af4. af'8 ~ af8 ef8 af8 af,8
  e'8 bf8 f'4 ~ f8 f,8 g8 bf8 ~
  bf8 e8 bf8 f'8 bf2

  \key a \minor

  d,4. a'8 ~ a8 d,8 a'8 g,8
  c4. g'8 ~ g8 f8 g,8 gs8
  a4. c'8 ~ c8 a8 e8 a,8
  d4. d8 ~ d8 a8 d8 a8
  g4. g'8 ~ g8 g,8 d'8 g8 ~
  g8 g8 d'8 g16 a16 b2

  \key af \major

  ef,,4. ef'8 ~ ef8 bf8 ef8 ef,8
  ef'8 bf8 ef8 r8 ef16 bf16 ef,8 ef'16 bf16 ef,8
  g,4 g'4 c'4 c,4
  af,2 ~ af8 af8 ef'8 af8 ~
  af1
  ef4. g,4. c4 ~
  c4 r4 r4 r4
  g''4 g8 g8 \tuplet 3/2 { f4 f4 c4 }

  \key a \minor

  e4 r4 r2
  r2 a8 g8 e8 f8 ~
  f8 c4 a8 ~ a8 f8 c8 cs8
  d8 a8 d4 g8 d8 g,4
  c8 r8 c4 r8 c4 c8 ~
  c8 c8 g'8 c8 d8 e4.
  f,,4. f'8 ~ f8 f,8 c'8 cs8
  d8 a8 d8 e,8 g8 d'8 g8 r8
  c,8 r8 c4 r8 c4 c8 ~
  c8 c8 g'8 c8 d8 e4.

  \key ef \major

  r4 bf'8 c8 bf8 g4 c,8
  ef'8 d4 c8 ~ c8 g8 f8 ef8

  \clef "bass"

  af,,1 ~
  af8 bf4 bf8 bf8 f8 bf8 f'8 ~
  f8 bf,8 \acciaccatura { bf'8 ( } c8 ) bf8 ~ bf2
  af,8 c''8 bf8 af8 g8 f8 ef16 d16 af8 ~
  af8 c8 bf16 af16 g8 ~ g8 f8 ef16 d16 af8 ~
  af8 c''8 bf16 af16 g8 ~ g8 f8 ef16 d16 af8 ~
  af8 _ "rit." c8 bf16 af16 g8 ~ g8 f8 -> ef8 -> d8 ->

  \time 3/2

  \key a \minor

  f,4. f8 ~ f8 f8 c'8 cs8 d8 a8 d4

  \time 4/4

  r4 <c g'>2. ~ -> ~
  <c g'>1

  \time 3/2

  f,4. f'8 ~ f8 f,8 c'8 cs8 d8 a8 d4

  \time 4/4

  r4 <c g'>2. ~ -> ~

  <c g'>1
  \time 3/2  f,4. f8 ~ f8 f8 c'8 cs8 d8 a'8 d,4
  \time 4/4  r4 <c g'>2. ~ -> ~
  <c g'>1
  \time 3/2  f,4. f'8 ~ f8 f8 c'8 cs8 d8 a8 d,4
  \time 4/4  r4 <c g'>2. ~ -> ~
  <c g'>1
  \time 3/2  f,4. f8 ~ f8 f8 c'8 cs8 d8 a8 d4
  \time 4/4  r4 c2. ~ ->
  c8 c8 g'8 \acciaccatura { d'8 ( } ef8 ) ~ ef8 d8 c8 g8
  af,4. af'8 ~ af4. af,8 ~
  af4. af'8 ~ af2
  c8 c8 c8 g8 g8 c8 r8 c8 ~
  c8 c4 g8 c2
  c8 c8 c8 g8 g8 c8 r8 c8 ~
  c8 c4 g8 <c, g' c>2 ~ ~ ~
  <c g' c>1 ~ ~ ~
  <c g' c>1

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
