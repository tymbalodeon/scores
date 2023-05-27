\version "2.25.5"

\include "settings.ily"

\header {
  title = "Scroll"
  composer = "Ashley Cubbler"
  arranger = "Ben Rosen, bass"
}

chorus = \relative e, {
  | R1 * 3
  | r2. r16 e fs8

  | a4. e'8 ~ e fs8 a,16 b' cs8
  | d,4. b'8 ~ b cs8 d,16 e' fs8
  | b,16 cs e cs ~ cs8 a16 b cs a8. fs16 b e,8
  | b'16 cs fs e ~ e8 a,16 b e cs8. b16 a fs8
  | b,16 b b b r8 b16 b b b r fs b fs b8
}

music = \relative e, {
  \key e \major
  \time 4/4
  \clef "bass"

  | R1
  | r2. r8 e16 fs
  | ds'8 fs,16 cs' ~ cs fs, b8 r16 fs' fs8 ~ fs16 cs fs,8
  | R1
  | b16 b b b r8 b16 b b b r fs b fs b8

  | r2. r8 e,16 fs
  | ds'8 fs,16 cs' ~ cs fs, b8 r16 fs' fs8 ~ fs16 cs fs,8
  | r2. r8 b
  | b'16 b b b r fs b16 b b b r fs b fs b,8

  | fs4. a8 ~ a cs8 ~ cs16 e8.
  | b8. fs16 ~ fs8 b ~ b16 fs' fs8 ~ fs16 cs fs,8
  | a4. gs8 ~ gs fs8 ~ fs16 e8.

  \chorus

  | r2. r8 e16 fs
  | ds'8 fs,16 cs' ~ cs fs, b8 r16 fs' fs8 ~ fs16 cs fs,8
  | r2. r8 fs
  | b16 b b b r fs b16 b b b r fs b fs b8

  | cs'4. b8 ~ b ds,16 e ds'16 cs e,, fs
  | ds'8 fs,16 cs' ~ cs fs, b8 r16 fs' fs8 ~ fs16 cs fs,8
  | cs''4. b8 ~ b16 a, ds e ds'16 cs fs, gs
  | b16 b b b r fs b16 b b b r fs b fs b, e,

  | fs4. a8 ~ a cs8 ~ cs16 e8.
  | b8. fs16 ~ fs8 b ~ b16 fs' fs8 ~ fs16 cs fs,8
  | a4. cs8 ~ cs e8 ~ e16 e,8.

  \chorus

  | b'16 b b b r8 b16 b b b r fs b fs b8
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
