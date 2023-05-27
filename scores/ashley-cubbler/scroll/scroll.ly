\version "2.25.5"

\include "settings.ily"

\header {
  title = "Scroll"
  composer = "Ashley Cubbler"
  arranger = "Ben Rosen, bass"
}

music = \relative e, {
  \key b \major
  \time 4/4
  \clef "bass"

  | R1
  | r2 r4 r8 e16 fs
  | ds'8 fs,16 cs' ~ cs fs, b8 r16 fs' fs8 ~ fs16 cs fs,8
  | R1
  | b16 b b b r8 b16 b b b r fs b fs b8

  | r2 r4 r8 e,16 fs
  | ds'8 fs,16 cs' ~ cs fs, b8 r16 fs' fs8 ~ fs16 cs fs,8
  | r2. r8 b
  | b'16 b b b r fs b16 b b b r fs b fs b,8
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
