\version "2.24.0"

\include "settings.ily"

\header {
  title = "Psalm 128"
  composer = "The Chairman Dances"
}

music = \relative e' {
  \clef "bass"
  \tempo 4 = 100
  \key g \major
  \time 4/4

  | R1 * 4
  | g4 b4 d4. d,8 ~
  | d2 fs2
  | R1 * 2

  r4 g4 d'8 g,4  e8 ~
  e8 b'8 \glissando a8   a,,8
  d'8 e8 fs8 b,8 ~
  b4  c,4 g'8 d'8 e8 b8 ~
  b8 d8 a8 e,8 a'8 e8 g8 d8
  r4 g'4 d'8 g,4  e8 ~
  e8 b'8 \glissando a8   a,,8
  d'8 e8 fs8 b,8 ~
  b4  c,4 g'8 d'8 e8 b8 ~
  b8 d8 a8 e,8 a'8 e8 g8 a8
  r4 g4 d'8 \glissando e4 e,8 ~
  e8 b'8 a8   e,8 a8 b8 ~ <b
                           d'>8 <bf df'>8
  <a c'>4 a4 ~ <a c'>8 a8 \glissando b8 e,8 ~
  e8 e''8 a,4 \glissando e,8 fs4.
  r4 g'4 d'8 e4 e,8 ~
  e8 b'8 a8   e,8 a8 b8 ~ <b
                           d'>8 <bf df'>8
  <a c'>4 a4 ~ a8 d8 ds8 e8 ~
  e4 e,4 fs8 a'8 fs,4
  r4 g''4 d'8 g,4  e8 ~
  e8 b'8 \glissando a8   a,,8
  d'8 e8 fs8 b,8 ~
  b4  c,4 g'8 d'8 e8 b8 ~
  b8 d8 a8 e,8 a'8 e8 g8 d8
  r4 g4 d'8 \glissando e4 e,8 ~
  e8 b'8 a8   e,8 a8 b8 ~ <b
                           d'>8 <bf df'>8
  <a c'>4 a4 ~ <a c'>8 a8 \glissando b8 e,8 ~
  e8 e''8 a,4 \glissando e,8 fs4.
  r4 g'4 d'8 e4 e,8 ~
  e8 b'8 a8   e,8 a8 b8 ~ <b
                           d'>8 <bf df'>8
  <a c'>4 a4 ~ a8 d8 ds8 e8 ~
  e4 e,4 fs8 a'8 fs,4
  r4 e4 ~ -> e8 fs4 g8 ~
  g1
  r4 e4 ~ -> e8 fs4 g8 ~
  g1
  d'4. fs8 ~ fs8 a8 d4
  g4. e8 ~ e2
  R1*5
  r4 g4 d'8 g,4  e8 ~
  e8 b'8 \glissando a8   a,,8
  d'8 e8 fs8 b,8 ~
  b4  c,4 g'8 d'8 e8 b8 ~
  b8 d8 a8 e,8 a'8 e8 g8 d8
  r4 g'4 d'8 g,4  e8 ~
  e8 b'8 \glissando a8   a,,8
  d'8 e8 fs8 b,8 ~
  b4  c,4 g'8 d'8 e8 b8 ~
  b8 d8 a8 e,8 a'8 e8 g8 a8
  r4 g4 d'8 \glissando e4 e,8 ~
  e8 b'8 a8   e,8 a8 b8 ~ <b
                           d'>8 <bf df'>8
  <a c'>4 a4 ~ <a c'>8 a8 \glissando b8 e,8 ~
  e8 e''8 a,4 \glissando e,8 fs4.
  r4 g'4 d'8 e4 e,8 ~
  e8 b'8 a8   e,8 a8 b8 ~ <b
                           d'>8 <bf df'>8
  <a c'>4 a4 ~ a8 d8 ds8 e8 ~
  e4 e,4 fs8 a'8 fs,4
  g4 g4 g8 g8 r4

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Instrument"
    \numericTimeSignature
  } {
    \compressMMRests
    \music
  }
}
