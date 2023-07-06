\version "2.25.6"

\include "helpers/settings.ily"

\header {
  title = "Silver in the Sun"
  subtitle = "The Chairman Dances"
  composer = "Eric Krewson"
  arranger = "Ben Rosen, bass"
}

music = \relative fs, {
  \key c \major
  \time 4/4
  \clef "bass"

  | R1 * 3
  | r2. fs4

  | b4. b8 ~ b4 e
  | fs4. fs8 ~ fs4 fs,
  | e'4. e8 ~ e4 b
  | e4. e8 ~ e fs g4

  | d4. d8 ~ d4 a'4
  | d2. a4

  | b,4. b8 ~ b4 e
  | fs4. fs8 ~ fs4 fs,
  | g4. g8 ~ g4 d'
  | g4 a, b cs

  | d4. d8 ~ d4 e8 es
  | fs4. fs8 ~ fs4 fs,
  | g1
  | R1

  | R1 * 3
  | r2. fs4

  | b4. b'8 ~ b4 e,8 es
  | fs4. fs,8 ~ fs4 fs'8 a,
  | e'8 fs ( g ) fs ~ fs e4 b8
  | e,2 ~ e8 fs g4

  | d'4. d8 ~ d4 a'4
  | d2. a4

  | b,4. b'8 ~ b4 e,8 es
  | fs4. fs,8 ~ fs4 fs'8 a,
  | g'8 e' fs g  ~ g fs e b
  | e,,2 ~ e8 fs g4

  | b4. b'8 ~ b4 e,8 es
  | fs4. fs,8 ~ fs4 fs'4
  | g4. g8 ~ g g g d
  | g g fs a, e' a, b cs

  | d4. d8 ~ d4 e,8 es
  | fs4. fs8 ~ fs4 fs
  | g1
  | R1

  \repeat unfold 2 {
    | e'2. b4
    | a2. a4
    | d4. d8 fs' e b4
    | e,,2. b'4
  }

  | e2. b4
  | a2. a4
  | d4. d8 fs'8. e16 d8. cs16
  | b4 e,,2 b'4

  | e2. b4
  | a1

  | R1
  | r2. a'4
  | d1 ~
  | d1

  | R1 * 4

  | R1 * 8

  | R1

  | r2 r8 e,, fs4

  | d'4. d8 ~ d4 e8 es
  | fs4. fs8 ~ fs4 fs,
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
