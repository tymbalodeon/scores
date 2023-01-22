\version "2.24.0"

\include "settings.ily"

\header {
  title = "A Family Waiting"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

music = \relative a {
    \clef "bass"
    \tempo 4 = 100
    \key a \major
    \time 3/4

    | a2.
    | a2.
    | <e a>2.
    | <e a>2.

    | r4 a,8 e'16 fs16 a4
    | fs,4 r8 b16 cs16 e4
    | a,4 r8 e'16 fs16 a4
    | fs,4 r8 b16 cs16 e8 fs8

    | g,4 r8 a16 b16 d8 e8
    | g4 g8 a,8 b8 cs8
    | d4 d'4 cs8 a,8
    | d4 \acciaccatura { e'8 ( } fs8 ) e8 cs8 a8

    | a,4 r8 e'16 fs16 a4
    | fs,4 r8 b16 cs16 e4
    | a,4 r8 e'16 fs16 a4
    | fs,4 r8 b16 cs16 e8 fs8

    | g,4 r8 a16 b16 d8 e8
    | g4 g8 a,8 b8 cs8
    | d4 d'4 cs8 a,8
    | d4 \acciaccatura { e'8 ( } fs8 ) e8 cs8 a8

    | a,4
      \ottava #1
      d''4 cs4
      \ottava #0
    | a,,4
      \ottava #1
      cs''4 a4
      \ottava #0
    | a,,4
      \ottava #1
      d''4 cs4
      \ottava #0
    | a,,4
      \ottava #1
      cs''4 a4
      \ottava #0

    | g,,4 r8 a16 b16 d8 e8
    | g4 g8 a,8 b8 cs8
    | d4 d'4 cs8 a,8
    | d4 \acciaccatura { e'8 ( } fs8 ) e8 cs8 a8

    | a,4 d''4 cs4
    | a,,4 cs''4 a4
    | a,,4 d''4 cs4
    | a,,4 cs''4 a4

    | r4 r4 fs4
    | fs,,8 fs8 r4 r4
    | a8 a8 r4 r4

    \time 2/4

    | fs8 fs8 r4

    \time 3/4

    | g4 r8 a16 b16 d8 e8
    | g4 g8 a,8 b8 cs8
    | d4 d'4 cs8 a,8
    | d4 \acciaccatura { e'8 ( } fs8 ) e8 cs8 a8

    a,8 a8 r8 e'16 fs16 a4
    fs,8 fs8 r8 b16 cs16 e4
    a,16 a16 a8 r8 e'16 fs16 a4
    fs,16 fs16 fs8 r8 b16 cs16 e8 fs8
    g,4 r8 a16 b16 d8 e8
    g4 g8 a,8 b8 cs8
    d4 d'4 cs8 a,8
    d4 \acciaccatura { e'8 ( } fs8 ) e8 cs8 a,8
    d4 d'4 cs8 a,8
    d4 \acciaccatura { e'8 ( } fs8 ) e8 cs8 a8
    c,2. :16
    d2 :8 d8 e8
    a,2 :8 a8 as8
    b2 :8 a8 b8
    c2 :8 d8 g8
    fs2 :8 g8 fs8
    e4 :8 e8 b8 e,8 es8
    fs2 :8 e8 fs8
    g2 :8 g8 a8
    d4 :8 e4 :8 fs8 d8
    a'4 :8 g4 :8 fs4 :8
    e4 :8 d4 :8 df4 :8
    c4 :8 \acciaccatura { b'8 ( } c8 ) d8 e8 c,8
    d4 :8 fs'8 g8 fs8 d8
    e8 a,8 e'8 b8 e8 cs8
    e8 fs8 g8 a8 b8 d8
    c,8 e,,8 c''8 e,,8 g8 e8
    a2 :8 \acciaccatura { c'8 ( } d8 ) c8
    d,8 a'8 d,8 a'8 d,8 a'8
    a,4 d''4 cs4
    a,,4 cs''4 a4
    a,,4 d''4 cs4
    a,,4 cs''4 a4
    g,,4 r8 a16 b16 d8 e8
    g4 g8 a,8 b8 cs8
    d4 d'4 cs8 a,8
    d4 \acciaccatura { e'8 ( } fs8 ) e8 cs8 a8
    a,4 d''4 cs4
    a,,4 cs''4 a4
    a,,4 d''4 cs4
    a,,4 cs''4 a4
    g,,4 r8 a16 b16 d8 e8
    g4 g8 a,8 b8 cs8
    d4 d'4 cs8 a,8
    d4 \acciaccatura { e'8 ( } fs8 ) e8 cs8 a,8
    d4 d'4 cs8 a,8
    d4 \acciaccatura { e'8 ( } fs8 ) e8 cs8 a8
    a2.
    a2.
    <e a>2.
    <e a>2.
    a2 a4
    fs,2 fs4
    a'2 a4
    fs,2 fs4
    a'2 a4
    fs,2 fs4
    \times 3/2  {
        <\tweak style #'diamond a' \tweak style #'diamond d \tweak style #'diamond g>4
        <\tweak style #'diamond cs \tweak style #'diamond fs \tweak
            style #'diamond b>4 }

    \times 3/2  {
        <\tweak style #'diamond a \tweak style #'diamond d \tweak style #'diamond g>4
        <\tweak style #'diamond cs \tweak style #'diamond fs \tweak
            style #'diamond b>4 }
    \bar "."
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
