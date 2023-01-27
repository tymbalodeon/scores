\version "2.24.0"

\include "settings.ily"

\header {
  title = "A Family Waiting"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

hits = \relative a {
  | \repeat unfold 2 { a2. }
  | \repeat unfold 2 { <e a>2. }
}

instrumental = \relative a, {
  | a4
  \ottava #1
  cs''4 a4
  \ottava #0
  | a,,4
  \ottava #1
  d''4 cs4
  \ottava #0
  | a,,4
  \ottava #1
  cs''4 a4
  \ottava #0
}

riff = \relative d {
  | d4 d'4 cs8 a,
  | d4 \acciaccatura { e'8 } fs e cs a
}

music = \relative a {
  \clef "bass"
  \tempo 4 = 100
  \key a \major
  \time 3/4

  \hits

  | r4 a,8 e'16 fs16 a4
  \repeat volta 2 {
    | fs,4 r8 b16 cs16 e4
    | a,4 r8 e'16 fs16 a4
    | fs,4 r8 b16 cs16 e8 fs

    | g,4 r8 a16 b16 d8 e
    | g4 g8 a, b cs
    \riff

    \alternative {
      \volta 1 {
        | a4 r8 e'16 fs16 a4
      }

      \volta 2 {
        | a,4
        \ottava #1
        d''4 cs4
        \ottava #0
      }
    }
  }

  \instrumental

  | g,,4 r8 a16 b16 d8 e
  | g4 g8 a, b cs
  \riff

  | a4
  \ottava #1
  d''4 cs4
  \ottava #0

  \instrumental

  | r2 fs,4 \glissando
  | fs,,8 fs8 r2
  | a8 a8 r2

  \time 2/4

  | fs8 fs8 r4

  \time 3/4

  | g4 r8 a16 b16 d8 e8
  | g4 g8 a,8 b8 cs8
  | \riff

  | a8 a8 r8 e'16 fs16 a4
  | fs,8 fs8 r8 b16 cs16 e4
  | a,16 a16 a8 r8 e'16 fs16 a4
  | fs,16 fs16 fs8 r8 b16 cs16 e8 fs8
  | g,4 r8 a16 b16 d8 e8
  | g4 g8 a,8 b8 cs8
  | \repeat volta 2 {
    \riff
  }

  | \repeat unfold 6 { c8 }
  | \repeat unfold 4 { d8 } d e
  | \repeat unfold 4 { a,8 } a as
  | \repeat unfold 4 { b8 } a b

  | \repeat unfold 4 { c8 } d g
  | \repeat unfold 4 { fs8 } g fs
  | e8 e e b e, es
  | \repeat unfold 4 { fs8 } e fs

  | \repeat unfold 4 { g8 } g a
  | d8 d e e fs d
  | a'8 a g g fs fs
  | e8 e d d df df

  | c8 c \acciaccatura { b' } c d e c,
  | d8 d fs' g fs d
  | e8 a, e' b e cs
  | e8 fs g a b d

  | c,8 e,, c'' e,, g e
  | \repeat unfold 4 { a8 } \acciaccatura { c' } d c
  | d,8 a' d, a' d, a'

  | a,4
  \ottava #1
  d''4 cs4
  \ottava #0
  | \instrumental

  | g,,4 r8 a16 b16 d8 e
  | g4 g8 a, b cs
  | \riff

  | a4
  \ottava #1
  d''4 cs4
  \ottava #0
  | \instrumental

  | g,,4 r8 a16 b16 d8 e8
  | g4 g8 a,8 b8 cs8

  | \repeat volta 2 {
    \riff
  }

  | \hits

  \repeat unfold 2 {
    | a'2 a4 \glissando
    | fs,2 fs4 \glissando
  }
  | a'2 a4 \glissando
  | fs,2 fs4

  \repeat unfold 2 {
    | <a' \harmonic d \harmonic g \harmonic>4.
      <cs \harmonic fs \harmonic b \harmonic>8 ~
      <cs \harmonic fs \harmonic b \harmonic>4
  }

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
