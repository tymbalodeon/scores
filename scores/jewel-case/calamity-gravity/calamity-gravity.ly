\version "2.25.22"

\include "helpers/bar-numbers-left.ily"
\include "helpers/set-bars-per-line.ily"
\include "helpers/settings.ily"

\include "calamity-gravity-chart.ily"

\header {
  title = "Calamity Gravity"
  subtitle = "Jewel Case"
  composer = "Nick Brown"
}

\score {
  \calamityGravityLayout
  \compressMMRests 
  \calamityGravityMusic
}
