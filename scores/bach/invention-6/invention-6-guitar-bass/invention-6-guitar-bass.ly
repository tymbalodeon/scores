\version "2.25.19"

\include "helpers/settings.ily"

\include "scores/bach/invention-6/invention-6-global.ily"
\include "scores/bach/invention-6/invention-6-voice-one.ily"

\include "scores/bach/invention-6/invention-6-guitar-bass/invention-6-bass.ily"

\score {
  \new StaffGroup {
    <<
      \new Staff \with {
        instrumentName = "Guitar"
        shortInstrumentName = "G."
      } {
        \global
        \inventionSixVoiceOne
      }

      \new Staff \with {
        instrumentName = "Bass"
        shortInstrumentName = "B."
      } {
        \global
        \bass
      }
    >>
  }
}
