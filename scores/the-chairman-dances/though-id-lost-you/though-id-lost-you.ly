\version "2.24.0"

\include "settings.ily"

\header {
  title = "Though Id Lost You"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

music = \relative c {
    \tempo 4 = 60
    \clef "bass"

    | R1

    | r2 r4 r16 c16 d16 e16
    | f8 g8 f8 e8 c4 r8 g16 \acciaccatura { c8 ( } d16 ) ~
    | d8 c16 d16 ~ d8 e8 d8 e4.

    | R1 * 6

    \time 6/4

    | r1 r4 r16 e,16 f16 fs16

    \time 4/4

    | g8 g8 g8 d'8 g2
    | d4 ~ d8 e16 d16 c8 e,8 f8 fs8
    | g4 ~ g16 e16 g8 b8 g8 c8 cs8
    | d4 \acciaccatura { e'8 ( } f16 ) e16 d16 a16 f16 e16 d16 c16 b16 c16

    d16 e,16
    g4 g16 e16 g8 b8 g8 d'8 e8
    f4 ~ \once \omit TupletBracket
    \times 2/3  {
        f8 g8 a8 }
    g32 f32 e16 ~ e8 ~ e16 f16 g8

    g8 d8 g8 f8 e8 c8 g8 gs8
    a4 r8 b8 c8 e8 g8 e8
    f8 g8 a8 b8 c8 g8 e'8 c8
    d8 bf8 f'8 d8 a'8 f8 c'8 a8
    b8 g8 d'8 a8 \once \override NoteHead.style = #'diamond g2

    | R1 * 7

    \time 6/4

    r1 r8 c,8 d8 e8

    \time 4/4

    f8 g8 f8 e8 c4 r8 g16 \acciaccatura { c8 ( } d16 ) ~
    d8 c16 d16 ~ d8 e8 d8 e4.

    | R1 * 5

    r2 r8 c8 e8 g8

    \time 6/4

    a4 g4 e2 ~ e4 ~ e16 e,,16 f16 fs16

    \time 4/4

    g8 g8 g8 d'8 g2
    a,4 c'8 b8 g8. a32 g32 f8 e8
    c4 a4 g'8 f8 e8 d8
    c8 e8 c'8 b8 g8. a32 b32 c8 d8
    e8 c8 d'8 c8 b8 g8 c,,8 b8
    a4 c'8 b8 g8. a32 g32 f8 e8
    c4 a4 g'8 e,8 g8 gs8
    a8 c8 g'8 f8 e8 d8 c8 b8
    f4 a'8 f,8 g8 a8 b8 g8
    a4 c'8 b8 g8. a32 g32 f8 e8
    c4 a4 g'8 f8 e8 d8
    c8 e8 c'8 b8 g8. a32 b32 c8 d8
    e8 c,8 g''8 e,8 b''8 g,8 d''8 b,8
    a,4 c'8 b8 g8. a32 g32 f8 e8
    c4 a4 g'8 e,8 g8 gs8
    a8 c8 g'8 f8 e8 d8 c8 b8
    bf4 \grace { e'16 ( } f16 ) e16 d16 c16 bf16 a16 g16 f16 e16 d16 c16
    bf16
    a8 a8 e'16 e,16 a8 a'8 e,8 f8 fs8
    g4. g8 d'4. d8
    g1

    \bar "."
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
