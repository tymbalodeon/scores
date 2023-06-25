\version "2.25.6"

\include "helpers/settings.ily"
\include "helpers/set-bars-per-line.ily"

\include "knucklebean-changes.ily"
\include "knucklebean-melody.ily"
\include "knucklebean-structure.ily"

\header {
  title = "Knucklebean"
  composer = "Daniel Barritt-Levine"
}

melody = \new Staff {
  <<
    \melody
    \structure
  >>
}

\layout {
  \context {
    \Score
    \consists
    #(set-bars-per-line '(5 4 4))
  }
}

\score {
  <<
    \changes
    \melody
  >>
}
