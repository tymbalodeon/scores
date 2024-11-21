\version "2.25.20"

\include "helpers/bar-numbers-left.ily"
\include "helpers/set-bars-per-line.ily"
\include "helpers/settings.ily"

\include "peace-in-time-chart.ily"

\header {
  title = "Peace In Time"
  subtitle = "Jewel Case"
  composer = "Nick Brown"
}

\score {
  \peaceInTimeLayout
  \peaceInTimeMusic
}
