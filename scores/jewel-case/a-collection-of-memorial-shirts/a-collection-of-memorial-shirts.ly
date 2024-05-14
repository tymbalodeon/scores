\version "2.25.13"

\include "helpers/settings.ily"
\include "helpers/set-bars-per-line.ily"
\include "helpers/bar-numbers-left.ily"

\include "a-collection-of-memorial-shirts-changes.ily"
\include "a-collection-of-memorial-shirts-melody.ily"
\include "a-collection-of-memorial-shirts-structure.ily"

\header {
  title = "A Collection of Memorial Shirts"
  subtitle = "Jewel Case"
  composer = "Nick Brown"
}

melody = \new Staff {
  <<
    \melody
    \structure
  >>
}

\score {
  \layout {
    \context {
      \Score \consists
      #(set-bars-per-line '(4))
    }
  }

  <<
    \numericTimeSignature
    \changes
    \melody
  >>
}
