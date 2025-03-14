\version "2.25.24"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "i-hadnt-tried-bass.ily"

\header {
  title = "I Hadn't Tried"
  subtitle = "The Chairman Dances"
  composer = "Eric Krewson"
  arranger = "Ben Rosen, bass"
}

verse = {
  \repeat unfold 4 {
    | r8 e16 e r8 e r e16 e r8 e16 e
  }
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
    \numericTimeSignature
  } {
    \compressMMRests
    \hadntTriedBass
  }
}

\score {
  \new Staff \with {
    \numericTimeSignature
    \clef "bass"
  } {
    \mark \markup \large { \musicglyph "scripts.coda" }

    | r8 e r e r e16 e r8 e16 e
    | r8 e r e r e16 e r8 e16 e

    | r8 e16 e r8 e r e16 e r8 e16 e
    | r8 e16 e r8 e r e16 e r8 e

    | r8 e r e r e16 e r8 e16 e
    | r8 e r e r e16 e r8 e16 e

    \bar "|."
  }
}
