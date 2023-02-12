\version "2.24.1"

\include "settings.ily"

\header {
  title = "My Life"
  subtitle = "And The Postseason Collapse Of The 1956 Brooklyn Dodgers"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

music = \relative b {
  \clef "bass"
  \key b \major

  | R1 * 8

  | \tuplet 5/4 { b4 fs'4 b,4 cs4 fs,4 }
  | \tuplet 5/4 { gs4 fs'4 b,4 cs4 fs,4 }

  \repeat unfold 4 {
    | \tuplet 5/4 { b,4 fs''4 b,4 cs4 fs,4 }
    | \tuplet 5/4 { gs4 fs'4 b,4 cs4 fs,4 }
  }

  b,8 gs8 ds'8 b'8 r8 ds,8 as'8 fs'8
  r8 gs,,8 ds'8 b'8 r8 as8 fs'8 gs8

  | \tuplet 5/4 { b,4 fs'4 b,4 cs4 fs,4 }
  | \tuplet 5/4 { gs4 fs'4 b,4 cs4 fs,4 }

  \repeat unfold 2 {
    | \tuplet 5/4 { b,4 fs''4 b,4 cs4 fs,4 }
    | \tuplet 5/4 { gs4 fs'4 b,4 cs4 fs,4 }
  }

  | b,8 gs8 ds'8 b'8 r8 ds,8 as'8 fs'8
  | r8 gs,,8 ds'8 b'8 r8 as8 fs'8 gs8

  | \tuplet 5/4 { b,4 fs'4 b,4 cs4 fs,4 }
  | \tuplet 5/4 { gs4 fs'4 b,8 cs8 r4 r4 }

  b,8 cs8 ds8 b8 fs8 gs8 a8 as8
  b8 cs8 ds8 b8 fs'8 es8 e8 ds8
  b8 cs8 ds8 b8 fs8 gs8 a8 as8
  b8 fs'8 ds8 b8 fs'8 gs8 fs8 ds8
  b8 gs8 ds'8 b'8 r8 ds,8 as'8 fs'8
  r8 gs,,8 ds'8 b'8 as8 gs8 fs8 ds8
  b8 cs8 ds8 b8 fs8 gs8 a8 as8
  b8 fs'8 ds8 b8 fs'8 gs8 a8 as8

  | \tuplet 5/4 { b4 fs'4 b,4 cs4 fs,4 }
  | \tuplet 5/4 { gs4 fs'4 b,4 cs4 fs,4 }

  \repeat unfold 2 {
    | \tuplet 5/4 { b,4 fs''4 b,4 cs4 fs,4 }
    | \tuplet 5/4 { gs4 fs'4 b,4 cs4 fs,4 }
  }

  | b,8 gs8 ds'8 b'8 r8 ds,8 as'8 fs'8
  | r8 gs,,8 ds'8 b'8 r8 as8 fs'8 gs8

  | \tuplet 5/4 { b,4 fs'4 b,4 cs4 fs,4 }
  | \tuplet 5/4 { gs4 fs'4 b,4 cs4 fs,4 }
  | \tuplet 5/4 { b,4 fs''4 b,4 cs4 fs,4 }
  | \tuplet 5/4 { gs4 fs'4 b,4 cs4 fs,4 }
  | \tuplet 5/4 { b,4 fs''4 b,8 cs8 r4 r4 }

  | b,8 cs8 ds8 b8 fs8 gs8 a8 as8
  | b8 fs'8 ds8 b8 fs'8 gs8 fs8 ds8
  | b8 gs8 ds'8 b'8 r8 ds,8 as'8 fs'8
  | r8 gs,,8 ds'8 b'8 as8 gs8 fs8 ds8
  | b8 cs8 ds8 b8 fs8 gs8 as8 r8

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
