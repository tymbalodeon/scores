\version "2.25.5"

\include "helpers/settings.ily"
\include "helpers/set-bars-per-line.ily"

\include "underground-changes.ily"
\include "underground-melody.ily"
\include "underground-structure.ily"

\header {
  title = "Underground"
  composer = "Jewel Case"
}

melody = \new Staff {
  <<
    \melody
    \structure
  >>
}

\layout {
  \context {
    \Score \consists
    #(set-bars-per-line '(
      4 4 4 3 3
      4 4 4 3 4
    ))
  }
}

\score {
  <<
    \changes
    \melody
  >>
}
