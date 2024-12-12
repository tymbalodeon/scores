\version "2.25.21"

\include "helpers/bar-numbers-left.ily"
\include "helpers/set-bars-per-line.ily"
\include "helpers/settings.ily"

\include "shut-my-lids-chart.ily"

\header {
  title = "Shut My Lids"
  subtitle = "Jewel Case"
  composer = "Nick Brown"
}

\score {
  \shutMyLidsLayout
  \shutMyLidsMusic
}
