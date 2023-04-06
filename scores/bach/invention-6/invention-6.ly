\version "2.25.3"

\include "settings.ily"
\include "invention-6-voice-one.ily"
\include "invention-6-voice-two.ily"

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
          \voice_one
        }

        \new Staff {
          \global
          \voiceTwo
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
          \voice_one
        }

        \new Staff \with {
          instrumentName = "Bass"
          shortInstrumentName = "B."
        } {
          \global
          \voiceTwo
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
      \voice_one
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
      \bass
    }
  }
}
