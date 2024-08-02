\version "2.25.17"

\include "helpers/bar-numbers-left.ily"
\include "helpers/set-bars-per-line.ily"
\include "helpers/settings.ily"

\include "the-mind-mote-chart.ily"

\header {
  title = "The Minde-Mote"
  subtitle = "Jewel Case"
  composer = "Nick Brown"
}

\score {
  \theMindMoteLayout
  \theMindMoteMusic
}
