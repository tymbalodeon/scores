\version "2.25.3"

\include "settings.ily"

\header {
  title = "4700 Hazel"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

riff = \relative b' {
  | \ottava #1
    b8 b16 b16 b8 b16 b16 b8 b8 b16 b16 b8
  | b8 b16 b16 b8 a8 a16 a16 a8 a8 a8
  | a8 a16 a16 a8 a16 a16 a8 a8 a16 a16 a8
  | a8 a16 a16 a8 a16 a16 a8 a8 a16 a16 a8
    \ottava #0
}

verse = \relative e {
  | <e b'>1
  | r8 e,8 a8 b8 b8 d8 e8 e,8
  | r8 e8 r4 r4 e8 e'8
  | r8 e8 r4 r4 b4

  | <e b'>1
  | r8 e,8 a8 b8 b8 d8 e8 e,8
  | r8 e8 r4 r4 e8 e'8
  | r8 e8 r4 r4 b4
}

hits_high_base = \relative e {
    | r8 e8 r8 e8 r8 e8 r8 e8
    | r8 e8 r8 e8 e8 ef8 d8 df8
}

hits_high  = \relative e {
  \repeat unfold 2 {
    \hits_high_base
  }

  | r8 e8 r8 e8 r8 e8 r8 e8
  | r8 e8 r8 e8 e8 es8 fs8 fss8

  \hits_high_base
}

hits_low_base = \relative e, {
    | r8 e8 r8 e8 r8 e8 r8 e8
    | r8 e8 r8 e8 e'8 ef8 d8 df8
}

hits_low = \relative e, {
 \repeat unfold 2 {
   \hits_low_base
 }

  | r8 e8 r8 e8 r8 e8 r8 e8
  | r8 e8 r8 e8 e'8 es8 fs8 fss8

  \hits_low_base
}

music = \relative e {
  \clef "bass"
  \key e \major

  | R1 * 4

  \riff

  \verse

  | e'4 fs4 gs4. e8 ~
  | e4. e8 ~ e2
  | R1
  | r8 e,,8 a8 b8 b8 d8 e8 e,8

  | r8 e8 r4 r2
  | r2 r4 e8 e'8
  | r8 e8 r4 r2
  | R1

  \riff

  \verse

  | \ottava #1
    gs'4 a4 b4. gs8 ~
  | gs4. gs8 ~ gs2
    \ottava #0
  | R1
  | r8 e,,8 a8 b8 b8 d8 e8 e,8
  | r8 e8 r4 r2
  | r2 r4 e8 e'8

  \hits_high

  \hits_low

  \repeat volta 2 {
    | e'8 e16 e16 e8 e16 e16 e8 e8 e16 e16 e8
    | \ottava #1
      cs'8 cs16 cs16 cs8 b8 b16 b16 b8 b16 b16 b8
      \ottava #0
    | fs8 fs16 fs16 fs8 fs16 fs16 fs8 fs8 fs16 fs16 fs8
    | cs8 cs16 cs16 cs8 cs16 cs16 cs8 cs8 cs16 d16 cs8
  }

  \repeat volta 2 {
    | b8 b16 b16 b8 b16 b16 b8 b8 b16 b16 b8
    | gs'8 gs16 gs16 gs8 fs8 fs16 fs16 fs8 fs16 fs16 fs8
    | e8 e16 e16 e8 e16 e16 e8 e8 e16 e16 e8
    | a,8 a16 a16 a8 a16 a16 a8 a8 a16 a16 a8
  }

  \repeat volta 2 {
    | e8 e16 e16 e8 e16 e16 e8 e8 e16 e16 e8
    | cs'8 cs16 cs16 cs8 b8 b16 b16 b8 b16 b16 b8
    | fs8 fs16 fs16 fs8 fs16 fs16 fs8 fs8 fs16 fs16 fs8
    | a8 a16 a16 a8 a16 a16 a8 a8 a16 a16 a8
  }

  \repeat volta 2 {
    | e,8 e16 e16 e8 e16 e16 e8 e8 e16 e16 e8
    | cs'8 cs16 cs16 cs8 b8 b16 b16 b8 b16 b16 b8
    | fs8 fs16 fs16 fs8 fs16 fs16 fs8 fs8 fs16 fs16 fs8

    \alternative {
      \volta 1 {
        | a8 a16 a16 a8 a16 a16 a8 a8 a16 a16 a8
      }

      \volta 2 {
        | a8 a8 r8 a8 ~ a4 r8 e8
      }
    }
  }

  \repeat volta 2 {
    | \ottava #1
      b'''8 -> gs8 fs8 gs8 -> b8 gs8 -> e8 b8
    | b'8 -> gs8 fs8 gs8 b8 -> gs8 fs8 -> d8
      \ottava #0
    | e8 -> cs8 b8 cs8 -> e8 cs8 -> a8 e8
    | e'8 -> cs8 b8 cs8 e8 -> a,8 gs8 fs8
  }

  \repeat volta 2 {
    | b8 -> gs8 fs8 gs8 -> b8 gs8 -> e8 b8
    | b'8 -> gs8 fs8 gs8 b8 -> gs8 fs8 -> d8
    | e8 -> cs8 b8 cs8 -> e8 cs8 -> a8 e8
    | e'8 -> cs8 b8 cs8 e8 -> a,8 gs8 e8 ~
  }

  | e1

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
