\version "2.25.5"

\include "settings.ily"

\header {
  title = "Convalescence"
  composer = "The Chairman Dances (Eric Krewson)"
  arranger = "Ben Rosen, bass"
}

riff = \relative cs' {
  | cs8 as gs cs -. r4 as16 ( cs ) ( as ) gs
  | cs8 as gs cs -. r4 cs,8 -. r
}

music = \relative cs {
  \clef "bass"
  \tempo 4 = 120
  \key cs \major

  \repeat volta 2 {
    \riff
  }

  \repeat volta 4 {
    | r4 \tuplet 3/2 { cs cs8 } r4 cs

    \alternative {
      \volta 1,3 {
        | r4 \tuplet 3/2 { cs cs8 } r4 e
      }

      \volta 2 {
        | r4 \tuplet 3/2 { cs cs8 } r es, r fs
      }

      \volta 4 {
        | r4 \tuplet 3/2 { cs' cs8 } r g r fs
      }
    }
  }

  | r4 e8 r r es r4
  | fs8 r r fss r4 gs8 r
  | r8 e r4 es8 r r fs
  | r4 fss8 r r gs r4

  | e8 r r es r4 fs8 r
  | r8 fss r4 gs8 r r e
  | r4 es8 r r fs r4
  | fss8 r r gs r4 e8 r

  | r8 es r4 fs8 r r fss
  | r4 gs8 r r e r4
  | es8 r r4 r2
  | R1

  | es''8. e16 ~ e8 ds ~ ds16 d8. cs c16 ~
  | c8 b ~ b16 as8. a gs16 ~ gs8 g ~
  | g16 fs8. es e16 ~ e8 ds ~ ds16 d8.
  | cs8. c16 ~ c8 b ~ b16 as8. a gs16 ~

  | gs8 r \tuplet 3/2 { cs4 cs8 } r4 cs4
  | r4 \tuplet 3/2 { cs cs8 } r4 e
  | r4 \tuplet 3/2 { cs cs8 } r4 cs
  | r4 \tuplet 3/2 { cs cs8 } r g r fs

  \repeat volta 4 {
    | cs'4 \tuplet 3/2 { cs cs8 } cs4 \tuplet 3/2 { cs cs8 }
    \alternative {
      \volta 1,3 {
        | cs4 \tuplet 3/2 { cs cs8 } cs4 e
      }

      \volta 2 {
        | cs4 \tuplet 3/2 { cs4 cs8 } e,4 es
      }

      \volta 4 {
        | cs'4 \tuplet 3/2 { cs4 cs8 } g4 fs
      }
    }
  }

  | r4 \tuplet 3/2 { cs'4 cs8 } r4 cs
  | r4 \tuplet 3/2 { cs4 cs8 } r4 e
  | r4 \tuplet 3/2 { cs4 cs8 } r4 cs
  | r4 \tuplet 3/2 { cs4 cs8 } r es, r fs

  \riff

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
