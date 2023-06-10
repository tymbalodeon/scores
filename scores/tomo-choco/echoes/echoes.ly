\version "2.25.5"

\include "settings.ily"

\header {
  title = "Echoes"
  composer = "Tomo Choco (Ashley Cubbler)"
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
  | b,4. gs'8 ~ gs4 fs8 gs
  | b4. a8 ~ a4 gs4 ~
  | gs8 fs4. e4 ds

  | r4. fs,8 ~ fs4 fs
  | b1
  | fs4. fs'8 ~ fs4 fs,
  | b1

  | fs4. fs'8 ~ fs4 fs,
  | b4. ds8 ~ ds4 fs8 gs
  | b4. a8 ~ a2
  | gs4. fs8 ~ fs4 e4

  | e'8 ds cs b ~ b e, fs b
  | a8 gs fs e ~ e e, fs a
  | b2. b4

  | cs'2. b,4
  | ds'2. b,4
  | fs''1

  | fs,,4. fs'8 ~ fs4 fs,
  | b4. gs'8 ~ gs fs4 cs8
  | fs,4. fs'8 ~ fs4 cs8 fs
  | b,4 fs'8 a, gs' a b4

  | fs,4. fs'8 ~ fs4 cs8 fs
  | b,4 e,8 fs b cs e fs
  | fs,4. fs'8 ~ fs fs cs fs
  | r8 b r b ~ b fs b fs

  | b8 b b a a  e fs b
  | a8 a a gs gs fs e e,

  | fs4. fs'8 ~ fs4 cs8 fs
  | r8 b, r b ~ b4 r
  | fs4. fs'8 ~ fs4 cs8 fs
  | r8 b, r b ~ b b cs4

  | e,4. e'8 ~ e4 fs,
  | b4. b'8 ~ b4 b,
  | a4. a'8 ~ a b cs4
  | gs4. fs8 ~ fs4 e

  | a,4. gs8 ~ gs4 fs
  | b4. ds8 ~ ds4 fs
  | fs'1 ~
  | fs2. b,4

  | b,1 ~
  | b1

  | R1 * 4

  | b'4. a8 ~ a2
  | gs4. fs8 ~ fs4 e4

  | r4. fs,8 ~ fs2
  | b2. r4
  | fs4. fs'8 ~ fs4 fs,
  | b2. r4

  | fs4. fs'8 ~ fs4 fs,
  | b4. ds8 ~ ds4 fs8 gs
  | b4. a8 ~ a2
  | gs4. fs8 ~ fs4 e4

  | b''4. a8 ~ a2
  | gs4. fs8 ~ fs4 cs4

  | a,1
  | fs1
  | e2. b'4
  | e4. fs8 ~ fs4 gs

  | a,1
  | fs1
  | e2. b'4
  | e4. b'8 ~ b b cs4

  | a,1
  | fs1
  | e2. b'4
  | e4. ds8 ~ ds4 cs8 b ~

  | b1
  | r2. r8 a

  \repeat volta 3 {
    | b''8 a gs fs ~ fs gs e a,,
    | b''8 a gs fs ~ fs e ds fs,
    | fs'8 e ds cs ~ cs ds b fs

    \alternative {
      \volta 1,2 {
        | fs'8 e ds cs ~ cs a gs a,
      }

      \volta 3 {

        | fs''8 e ds cs b a gs fs
      }
    }
  }

  | b8 a gs fs ~ fs gs e a,
  | b'8 a gs fs ~ fs e ds fs,
  | fs'8 e ds cs ~ cs ds b e,
  | fs gs a b cs e fs b,

  | a1
  | gs2. e4
  | fs1
  | e'4 b' gs e

  | b1
  | r2. b4

  | b'4. a8 ~ a4 gs4 ~
  | gs8 fs4. e4 ds

  | fs,8 fs'4. ~ fs2

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
