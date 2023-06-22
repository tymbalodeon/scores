\version "2.25.5"

\include "helpers/settings.ily"

\header {
  title = "Well Wisher"
  composer = "Eric Krewson (The Chairman Dances)"
}

music = \relative b' {
  \clef "bass"
  \key g \major

  | R1 * 16

  | \ottava #1
    r4 b8 c8 d8 c8 b4
  | r4 b8 c8 d8 \tuplet 3/2 { c16 d16 c16 } b8 a8
  | g4 r8 fs8 d'8. d,16 ~ d8 b'8 ~
  | b16 g8. b,2.

  | r4 b'8 c8 d8 c8 b4
  | r8 a8 b8 c8 d8 \tuplet 3/2 { c16 d16 c16 } b8 a8
  | g4 r8 fs8 d'8. d,16 ~ d8 b'8 ~
  | b16 g8. b,2.

  | r4 fs'8 g8 a8 g8 fs4
  | r4 e8 fs8 g8 fs8 e8 d8
  | b4 r8 fs'8 d'8. d,16 ~ d8 b'8 ~
  | b16 g8. b,4
    \ottava #0
    r8 g,8 a8 b8

  | c8 g8 c8 d8 e8 d8 c8 b8
  | c8 b8 c8 d8 e8 d8 e8 fs8
  | g8 g8 a8 a8 b8 b8 d8 d8
  | \ottava #1
    d'8 c8 b8 a8 g8 fs8 e8 d8

  | e8 d8 e8 fs8 g8 \tuplet 3/2 { fs16 g16 fs16 } e8 d8
    \ottava #0
  | b8 a8 b8 d8 c8 b8 a8 fs8
  | g8 g8 fs8 fs8 e8 e8 d8 d8
  | b8 c8 d8 b8 g8 a8 b8 e8

  | d4 a'8 d,8 g'8. fs16 ~ fs8 d8
  | e8 b8 c8 g'8 b,8 r16 a16 ~ a8 e,8
  | g4 b4 d8. d16 e16 fs16 r8
  | <g d'>1

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
