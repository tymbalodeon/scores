\version "2.25.15"

\include "helpers/settings.ily"

\include "invention-6-global.ily"
\include "invention-6-voice-one.ily"
\include "invention-6-voice-two.ily"
\include "invention-6-guitar.ily"
\include "invention-6-bass.ily"

\book {
  \bookOutputSuffix "score"
  \score {
    \new StaffGroup {
      <<
        \new Staff \with {
          instrumentName = "Guitar"
          shortInstrumentName = "G."
        } {
          \global
          \voiceOne
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
}

\book {
  \bookOutputSuffix "guitar"

  \score {
    \new Staff \with {
      instrumentName = "Guitar"
    } {
      \global
      \guitar
    }
  }
}

\book {
  \bookOutputSuffix "bass"

  \score {
    \new Staff \with {
      instrumentName = "Bass"
    } {
      \global
      \bassWithFingerings
    }
  }
}
