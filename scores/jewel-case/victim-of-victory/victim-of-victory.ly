\version "2.25.19"

\include "helpers/bar-numbers-left.ily"
\include "helpers/set-bars-per-line.ily"
\include "helpers/settings.ily"

\include "victim-of-victory-bass.ily"
\include "victim-of-victory-chart.ily"

\header {
  title = "Victim of Victory"
  subtitle = "Jewel Case"
  composer = "Nick Brown"
  arranger = "Ben Rosen, bass"
}

\book {
  \score {
    \victimOfVictoryLayout
    \victimOfVictoryMusic
  }
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
    \numericTimeSignature
  } {
    \compressMMRests
    \victimOfVictoryBass
  }
}
