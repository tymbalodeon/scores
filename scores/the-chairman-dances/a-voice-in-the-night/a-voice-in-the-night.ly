\version "2.25.22"

\include "helpers/settings.ily"
\include "scores/the-chairman-dances/a-voice-in-the-night/a-voice-in-the-night-bass.ily"

\header {
  title = "A Voice In The Night"
  composer = "Eric Krewson"
  arranger = "Ben Rosen, bass"
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
    \numericTimeSignature
  } {
    \compressMMRests
    \aVoiceInTheNightBass
  }
}
