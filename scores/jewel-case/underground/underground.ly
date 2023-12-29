\version "2.25.11"

\include "helpers/settings.ily"
\include "helpers/set-bars-per-line.ily"
\include "helpers/bar-numbers-left.ily"

\include "underground-changes.ily"
\include "underground-melody.ily"
\include "underground-structure.ily"

\include "underground-bass.ily"

\header {
  title = "Underground"
  subtitle = "Jewel Case"
  composer = "Nick Brown"
}

melody = \new Staff {
  <<
    \melody
    \structure
  >>
}

\book {
  \score {
    \layout {
      \context {
        \Score \consists
          #(set-bars-per-line '(
            4 4 4 3 3
            4 4 4 3 4
          )
        )
      }
    }

    <<
      \changes
      \melody
    >>
  }
}

\book {
  \bookOutputSuffix "bass"

  \score {
    \new Staff \with {
      instrumentName = "Bass"
    }
    {
      \compressMMRests
      \bass
    }
  }
}
