\version "2.25.19"

\include "helpers/bar-numbers-left.ily"
\include "helpers/set-bars-per-line.ily"
\include "helpers/settings.ily"

\include "decide-for-yourself-chart.ily"

\header {
  title = "Decide for Yourself"
  subtitle = "Jewel Case"
  composer = "Nick Brown"
}

\score {
  \decideForYourselfLayout
  \decideForYourselfMusic
}
