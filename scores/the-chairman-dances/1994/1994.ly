\version "2.25.6"

\include "helpers/settings.ily"

\header {
  title = "1994"
  composer = "Eric Krewson (The Chairman Dances)"
  arranger = "Ben Rosen, bass"
}

music = \relative c {
    \clef "bass"
    \tempo 4 = 120
    \key e \major

    | R1 * 6

    r2 r4 r8 e8 ~
    e8 e8 e,8 e8 fs8 fs8 gs8 gs8
    a8 a8 a8 r8 r8 a8 r8 a8
    b8 b8 b8 r8 r8 b8 r8 b8
    e8 e8 e8 r8 r8 e8 r8 ds8
    d8 d8 d8 r8 r8 d8 r8 d8
    a8 a8 a8 r8 r8 a8 r8 a8
    b8 b8 b8 r8 r8 b8 r8 b8
    e8 e8 e8 r8 r8 e8 r8 e8
    e,8 e8 e8 r8 r8 e8 r8 e8
    a8 a8 a8 r8 r8 a8 r8 a8
    b8 b8 b8 r8 r8 b8 r8 b8
    e8 e8 e8 r8 r8 e8 r8 ds8
    d8 d8 d8 r8 r8 d8 r8 d8
    a8 a8 a8 r8 r8 a8 r8 a8
    b8 b8 b8 r8 r8 b8 r8 b8
    e8 e8 e8 r8 r8 e8 r8 e8
    e,8 e8 e8 r8 r8 e8 r8 e8
    a8 r8 r4 a'8 b4 b8 ~
    b4 ~ b8 a16 gs16 \times 2/3 {
        b4 a4 gs4 }

    b4 e,4 r4 r8 b8
    e8 fs8 gs8 fs8 ~ fs8 e4 b8
    cs8 e8 cs4 e8 fs8 gs8 fs8 ~
    fs8 e4 a8 ~ a8 gs4 e8 ~
    e2. b8 e8 ~
    e8 e8 e,8 e8 fs8 fs8 gs8 gs8
    a4 a8 a8 a8 a8 a8 a8
    gs'4 fs4 e4 fs4
    a,1
    b1
    a1
    b1
    a1
    b4 b4 b4 r4
    a8 r8 r4 a'8 b4 b8 ~
    b4 ~ b8 a16 gs16 \times 2/3 {
        b4 a4 gs4 }

    b4 e,4 r4 r8 b8
    e8 fs8 gs8 fs8 ~ fs8 e4 b8
    cs8 e8 cs4 e8 fs8 gs8 fs8 ~
    fs8 e4 a8 ~ a8 gs4 e8 ~
    e2. b8 e8 ~
    e8 e8 e,8 e8 fs8 fs8 gs8 gs8
    a4 a8 a8 a8 a8 a8 a8
    gs''4 fs4 e4 ds4
    a1
    b1
    a,1
    b1
    a1
    b4 b4 b4 r4
    a4 r4 r2 \bar "."
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
