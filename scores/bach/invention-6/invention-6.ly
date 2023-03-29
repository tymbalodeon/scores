\version "2.24.1"

\include "settings.ily"
\include "invention-6-guitar.ily"
\include "invention-6-bass.ily"

\header {
  title = "Invention 6"
  composer = "J. S. Bach"
  opus = "BWV 777"
}

key_and_time = {
  \key e \major
  \time 3/8
}

\score {
  \new StaffGroup {
    <<
      \new Staff \with {
        instrumentName = "Guitar"
        shortInstrumentName = "G."
      } {
        \key_and_time
        \voiceOne
      }

      \new Staff \with {
        instrumentName = "Bass"
        shortInstrumentName = "B."
      } {
        \key_and_time
        \voiceTwo
      }
    >>
  }
}

\book {
  \bookOutputSuffix "guitar"

  \score {
    \new Staff \with {
      instrumentName = "Guitar"
    } {
      \key_and_time
      \voiceOne
    }
  }
}

\book {
  \bookOutputSuffix "bass"

  \score {
    \new Staff \with {
      instrumentName = "Bass"
    } {
      \key_and_time
      \voiceTwo
    }
  }
}
