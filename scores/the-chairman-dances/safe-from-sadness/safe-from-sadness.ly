\version "2.25.22"

\include "helpers/settings.ily"

\header {
  title = "Safe From Sadness"
  composer = "Eric Krewson (The Chairman Dances)"
  arranger = "Ben Rosen, bass"
}

extra_rests = {
  \time 2/4
  | R1

  \time 4/4
}

music = \relative fs, {
  \key fs \major
  \numericTimeSignature
  \time 4/4
  \clef "bass"

  \compressMMRests {
    | R1 * 6
    \extra_rests
    | R1 * 8
    \extra_rests
    | R1 * 3
    \extra_rests
    | R1 * 6
  }

  | fs2. fs4
  | gs2. gs4
  | ds'2 ~ ds8. ds16 ~ ds8 es
  | fs2. ds'4

  | as1 ~
  | as4 as, cs2
  | b2. ~ b8 fs
  | b2 ~ b8. b16 ~ b8 cs

  | fs2. fs,4
  | gs2. gs4
  | ds'2 ~ ds8 es16 fs ~ fs8 as
  | ds2. ~ ds8 es16 ( fs ) ~

  | <as, fs'>2. ~ <as fs'>8 fs
  | as,2. as4

  \time 2/4

  | cs2

  \time 4/4

  | b2. ~ b8 fs
  | b2 ~ b8. b16 ~ b8 cs

  | fs2. fs,4
  | gs2. gs4
  | ds'2 ~ ds8. ds16 ~ ds8 es
  | fs2. ds'4

  | as2. ~ as8 fs
  | as,2. gs4

  \time 2/4

  | cs2

  \time 4/4

  | b2. ~ b8 fs
  | b2 ~ b8. b16 ~ b8 cs
  | fs2. fs4

  \time 2/4

  | ds'4 ds

  \time 4/4

  | <b fs'>2. ~ <b fs'>8 fs

  | b4 cs ds es
  | fs2. fs,,4

  \time 2/4

  | ds'4 ds4

  \time 4/4

  | <b fs'>2. ~ <b fs'>8 fs'

  | \acciaccatura { cs'16 } ds8 ds cs cs b as ds, es
  | fs2. fs,4

  \time 2/4

  | ds'4 ds4

  \time 4/4

  | <b fs'>2. ~ <b fs'>8 fs

  | b4 cs ds es
  | fs2. fs,4
  | ds'4 ds e e
  | b'2. ~ b8 fs

  | b2 ~ b8 fs b as
  | gs2 gs8. ds16 ~ ds4
  | gs,1

  \time 2/4

  | gs4 as4

  \time 4/4

  | b2. ~ b8 fs
  | b2. ~ b16 fs fs b ~
  | b2 ~ b16 b b b ~ b8 cs

  | fs8. fs16 ~ fs8 cs fs,8. fs'16 ~ fs8 fs,16 fss
  | gs8. gs16 ~ gs8 ds' gs8. gs16 ~ gs8 ds
  | b8. b16 ~ b8 fs b8. b16 ~ b8 fs
  | b8 b cs cs ds ds es es

  | fs8. fs16 ~ fs8 cs fs,8. fs'16 ~ fs8 fs,16 fss
  | gs8. gs16 ~ gs8 ds' gs16 as8 gs16 ~ gs8 ds
  | b8. b16 ~ b8 fs' b8. b16 ~ b8 fs
  | \acciaccatura { cs'16 } ds8 ds cs cs b as ds, es

  | fs8. fs16 ~ fs8 cs fs,8. fs'16 ~ fs8 fs,16 fss
  | gs8. gs16 ~ gs8 ds' gs16 as8 gs16 ~ gs8 ds
  | b8. b16 ~ b8 fs b8. b16 ~ b8 fs
  | b8 as16 b cs8 b16 cs ds8 cs16 ds es8 ds16 es

  | fs8. fs16 ~ fs8 cs fs,8. fs'16 ~ fs8 fs,16 fss
  | gs8 ds' b' as gs ds gs, as
  | <b fs'>1 ~
  | <b fs'>1

  \bar "."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
  } {
    \music
  }
}
