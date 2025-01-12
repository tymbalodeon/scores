\version "2.25.22"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "scores/the-chairman-dances/be-thou-my-vision/be-thou-my-vision-bass.ily"

\header {
  title = "Be Thou My Vision"
  subtitle = "The Chairman Dances"
  composer = "Traditional"
  arranger = "Ben Rosen, bass"
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
    \numericTimeSignature
  } {
    \compressMMRests
    \beThouMyVisionBass
  }
}
