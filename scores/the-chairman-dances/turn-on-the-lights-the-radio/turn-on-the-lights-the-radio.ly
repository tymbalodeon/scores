\version "2.25.17"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "scores/the-chairman-dances/turn-on-the-lights-the-radio/turn-on-the-lights-the-radio-bass.ily"
\include "scores/the-chairman-dances/turn-on-the-lights-the-radio/turn-on-the-lights-the-radio-piano.ily"

\header {
  title = "Turn on the Lights, the Radio"
  subtitle = "The Chairman Dances"
  composer = "Eric Krewson"
}

\book {
  \score {
    \new PianoStaff \with {
      instrumentName = "Piano"
    }
    <<
      \new Staff = "upper" \turnOnTheLightsTheRadioPianoUpper
      \new Staff = "lower" \turnOnTheLightsTheRadioPianoLower
    >>
  }
}

\book {
  \bookOutputSuffix "bass"

  \score {
    \new Staff \with {
      instrumentName = "Bass"
    }
    \turnOnTheLightsTheRadioBass
  }
}
