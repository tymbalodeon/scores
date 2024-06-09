\version "2.25.16"

\include "helpers/bar-numbers-left.ily"
\include "helpers/set-bars-per-line.ily"
\include "helpers/settings.ily"

\include "no-greater-lie-chart.ily"

\header {
  title = "No Greater Lie"
  subtitle = "Jewel Case"
  composer = "Nick Brown"
}

\score {
  \noGreaterLieLayout
  \noGreaterLieMusic
}
