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
