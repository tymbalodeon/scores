\version "2.25.6"

\include "helpers/settings.ily"

\header {
  title = "Brother My Brother"
  composer = "Eric Krewson (The Chairman Dances)"
  arranger = "Ben Rosen, bass"
}

music = \relative c {
  \clef "bass"

  | R1 * 8
  g1 ~
  g1
  f4  a4 c4 e4
  f4 g4 a4 c4
  b1
  <b, d'>1
  f4 a4 c4 e4
  f4 g4 a4 c4
  \times 2/3  {
    b'2 ~ <g b>2 ~ ~ <e g b>2 }

  a,,8 e'8 c'8 ~ <a, c'>8 ~ ~ <a c'>2
  \times 2/3  {
    b''2 ~ <e, b'>2 ~ ~ <d e b'>2 }

  e,,8 d'8 a'8 f'8 ~ <d, f'>4. r8
  \times 2/3  {
    b''2 ~ <g b>2 ~ ~ <e g b>2 }

  a,,8 e'8 c'8 ~ <a, c'>8 ~ ~ <a c'>2
  \times 2/3  {
    b''2 ~ <e, b'>2 ~ ~ <d e b'>2 }

  e,,8 d'8 a'8 f'8 ~ <d, f'>2
  a4. c'8 ~ c8 e,8 a8 e8
  d4. f'8 ~ f8 a,8 d8 a8
  c,4. e'8 ~ e8 g,8 c8 g8
  a,4. c'8 ~ c8 e,8 a8 e8
  \times 2/3  {
    b''2 ~ <g b>2 ~ ~ <e g b>2 }

  a,,8 e'8 c'8 ~ <a, c'>8 ~ ~ <a c'>2
  \times 2/3  {
    b''2 ~ <e, b'>2 ~ ~ <d e b'>2 }

  e,,8 d'8 a'8 f'8 ~ <d, f'>4. r8
  <e g'>1
  <d f'>1
  <c e'>1
  <a c'>1
  <g c'>1
  <f a''>1
  <e g''>1
  f1
  c''4 e16 d8. ~ d4 ~ d8 c8
  c8. a16 g2 c4
  c4 e4 d8 c4 d8 ~
  d1
  c,4 e8 d8 ~ d4 c4
  c4 a8 g8 ~ g4 f8 e8
  c'4 e4 d8 c4 d8 ~
  d8 e,8 f8 g8 a8 b8 c8 d8
  g1
  g1
  f1
  f1
  g1
  g1
  f1
  f1
  \times 4/5  {
    r4 _\fffff b'4 _\fffff g4 g4 e4 }

  \times 4/5  {
    e4 c4 c4 g4 e4 }

  \times 4/5  {
    r4 c''4 a4 a4 f4 }

  \times 4/5  {
    f4 c4 c4 a4 e4 }

  \times 4/5  {
    r4 g'4 e4 e4 c4 }

  e,,1 _\fffff
  \times 4/5  {
    r4 f''4 e4 e4 c4 }

  \times 4/5  {
    c4 a4 a4 f4 c4 }

  \times 4/5  {
    r4 b''4 g4 g4 e4 }

  \times 4/5  {
    e4 c4 c4 g4 e4 }

  \times 4/5  {
    r4 a'4 f4 f4 c4 }

  \times 4/5  {
    c4 a4 a4 f4 d,4 }

  \times 4/5  {
    r4 g''4 e4 e4 c4 }

  \times 4/5  {
    c4 g4 g4 e4 e,4 }

  \times 4/5  {
    r4 a''4 f4 f4 e4 }

  \times 4/5  {
    e4 c4 c4 a4 d,,4 }

  \times 4/5  {
    r4 c'''4 g4 g4 e4 }

  \times 4/5  {
    e4 c4 c4 b4 e,4 }

  \times 4/5  {
    r4 a'4 f4 f4 c4 }

  \times 4/5  {
    c4 a4 a4 f4 a,4 }

  \times 4/5  {
    r4 b''4 g4 g4 e4 }

  \times 4/5  {
    e4 c4 c4 g4 c,,4 }

  \times 4/5  {
    r4 a'''4 f4 f4 e4 }

  \times 4/5  {
    e4 c4 c4 a4 f4 }

  \times 4/5  {
    r4 e'4 c4 c4 g4 }

  \times 4/5  {
    g4 e4 e4 c4 g4 }

  \times 4/5  {
    r4 f''4 e4 e4 c4 }

  \times 4/5  {
    c4 a4 a4 f4 d,4 }
  s1*2
  R1
  e1
  a1
  e1
  d1
  a'1
  d,1
  e1
  d1
  c1
  a'1
  g1
  d1
  g1
  f1
  c1

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
