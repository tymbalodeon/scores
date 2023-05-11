\version "2.25.4"

\include "settings.ily"
\include "helpers/set-bars-per-line.ily"
\include "precious-jewel-melody.ily"
\include "precious-jewel-chords.ily"
\include "precious-jewel-structure.ily"

\header {
  title = "Precious Jewel"
  subtitle = "as played by Pat Metheney & Charlie Haden"
  composer = "Roy Acuff"
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
    \consists #(set-bars-per-line '(4
                                    4 3 4 3 2
                                    4 3 4 3 2))
  }
}

\score {
  <<
    \numericTimeSignature
    \changes
    \melody
  >>
}
