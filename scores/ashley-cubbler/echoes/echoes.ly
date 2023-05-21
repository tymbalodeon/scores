\version "2.25.4"

\include "settings.ily"

\header {
  title = "Echoes"
  composer = "Ashley Cubbler"
  arranger = "Ben Rosen, bass"
}

music = \relative fs, {
  \key fs \minor
  \time 4/4
  \clef "bass"

  | fs4. fs'8 ~ fs4 cs8 fs
  | b,4. gs'8 ~ gs4 fs
  | fs,4. fs'8 ~ fs4 cs8 fs
  | b,4 fs'8 a, ds e fs4

  | fs,4. fs'8 ~ fs4 cs8 fs
  | b,4. gs'8 ~ gs4 fs
  | b4. a8 ~ a4 gs4 ~
  | gs8 fs4. e4 ds

  | r4. fs,8 ~ fs4 fs
  | b2. r4
  | fs4. fs'8 ~ fs4 fs,
  | b2. r4
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
