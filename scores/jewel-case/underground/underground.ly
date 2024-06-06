\version "2.25.15"

\include "helpers/settings.ily"
\include "helpers/set-bars-per-line.ily"
\include "helpers/bar-numbers-left.ily"

\include "underground-bass.ily"
\include "underground-chart.ily"

\header {
  title = "Underground"
  subtitle = "Jewel Case"
  composer = "Nick Brown"
}

\book {
  \score {
    \undergroundLayout
    \undergroundMusic
  }
}

\book {
  \bookOutputSuffix "bass"

  \header {
    arranger = "Ben Rosen, bass"
  }

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
