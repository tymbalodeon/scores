\version "2.25.16"

\include "helpers/bar-numbers-left.ily"
\include "helpers/set-bars-per-line.ily"
\include "helpers/settings.ily"

\include "little-to-nothing-chart.ily"

\header {
  title = "Little to Nothing"
  subtitle = "Jewel Case"
  composer = "Nick Brown"
}

\score {
  \littleToNothingLayout
  \littleToNothingMusic
}
