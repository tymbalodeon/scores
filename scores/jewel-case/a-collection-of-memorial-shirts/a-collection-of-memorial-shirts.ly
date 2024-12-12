\version "2.25.21"

\include "helpers/settings.ily"
\include "helpers/set-bars-per-line.ily"
\include "helpers/bar-numbers-left.ily"

\include "a-collection-of-memorial-shirts-chart.ily"

\header {
  title = "A Collection of Memorial Shirts"
  subtitle = "Jewel Case"
  composer = "Nick Brown"
}

\score {
  \aCollectionOfMemorialShirtsLayout
  \aCollectionOfMemorialShirtsMusic
}
