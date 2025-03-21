\version "2.25.24"

\include "helpers/settings.ily"
\include "helpers/set-bars-per-line.ily"

\include "one-man-guy-changes.ily"
\include "one-man-guy-melody.ily"
\include "one-man-guy-structure.ily"

\header {
  title = "One Man Guy"
  composer = "Louden Wainright III"
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
      6 6 6 7
      4 4
      6 7 4 4
    ))
  }
}

\score {
  <<
    \numericTimeSignature
    \changes
    \melody
  >>
}
