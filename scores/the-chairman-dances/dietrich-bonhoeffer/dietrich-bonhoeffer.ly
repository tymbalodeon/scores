\version "2.25.20"

\include "helpers/settings.ily"

\header {
  title = "Dietrich Bonhoeffer"
  composer = "Eric Krewson (The Chairman Dances)"
  arranger = "Ben Rosen, bass"
}

music = \relative g, {
  \key g \major
  \time 4/4
  \clef "bass"
  | R1 * 68

  | g1 ~
  | g1
  | R1
  | r2 r8 e'' a, b

  | g2. d4 \glissando
  | g,1
  | g1 ~
  | g1

  | g1 ~
  | g1
  | \repeat unfold 2 {
    \repeat unfold 8 { g8 }
    }

  | \repeat unfold 4 { c8 } \repeat unfold 4 { d }
  | \repeat unfold 4 { ef8 } \repeat unfold 4 { f }
  | \repeat unfold 4 { g8 } g g g g,
  | \repeat unfold 8 { g8 }

  | \repeat unfold 4 {
    \repeat unfold 8 { g8 }
    }

  | \repeat unfold 4 { c8 } \repeat unfold 4 { d }
  | \repeat unfold 4 { ef8 } \repeat unfold 4 { f }
  | \repeat unfold 6 {
    \repeat unfold 8 { g8 }
    }

  | g1 ~
  | g1

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
