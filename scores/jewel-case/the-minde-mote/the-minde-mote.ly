\version "2.25.6"

\include "helpers/settings.ily"
\include "helpers/set-bars-per-line.ily"

\include "the-minde-mote-changes.ily"
\include "the-minde-mote-melody.ily"
\include "the-minde-mote-structure.ily"

\header {
  title = "The Minde-Mote"
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
      6
      4 5
      4 4
      4 6
      4 4
      4 4
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
