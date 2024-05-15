\version "2.25.15"

\include "helpers/settings.ily"

\include "invention-6-voice-one.ily"
\include "invention-6-voice-two.ily"
\include "invention-6-piano-upper.ily"
\include "invention-6-piano-lower.ily"
\include "invention-6-guitar.ily"
\include "invention-6-bass.ily"

\header {
  title = "Invention 6"
  composer = "J. S. Bach"
  opus = "BWV 777"
}

global = {
  \key e \major
  \time 3/8
}

\book {
  \bookOutputSuffix "piano"
  \score {
    \new PianoStaff {
      <<
        \new Staff {
          \global
          \pianoUpper
        }

        \new Staff {
          \global
          \pianoLower
        }
      >>
    }
  }
}

\book {
  \bookOutputSuffix "guitar-and-bass"
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
