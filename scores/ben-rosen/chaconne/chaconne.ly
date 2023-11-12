\version "2.25.10"

\include "helpers/settings.ily"
\include "chaconne-violin.ily"
\include "chaconne-upper-staff.ily"
\include "chaconne-lower-staff.ily"

\header {
  title = "Chaconne"
  composer = "Ben Rosen"
}

key_and_time = {
  \tempo 4 = 88
  \key fs \minor
  \time 3/4
}

\book {
  \bookOutputSuffix "violin"
  \score {
    \new Staff \with {
      instrumentName = "Violin"
    } {
      \key_and_time

      \compressMMRests {
        \violin
      }
    }
  }
}

\book {
  \paper {
    left-margin = 1\in
    bottom-margin = 0.75\in
  }

  \score {
    <<
      \new Staff \with {
        instrumentName = "Violin"
        shortInstrumentName = "Vln."
        \magnifyStaff #5/7
      } {
        \key_and_time
        \violin
      }

      \new PianoStaff \with {
        instrumentName = "Piano"
        shortInstrumentName = "Pno."
      } {
        <<
          \new Staff = "upper" {
            \key_and_time
            \upper_staff
          }
          \new Staff = "lower" {
            \key_and_time
            \lower_staff
          }
        >>
      }
    >>
  }
}
