\version "2.25.20"

\include "helpers/settings.ily"
\include "helpers/set-bars-per-line.ily"

\include "im-just-from-here-changes.ily"
\include "im-just-from-here-melody.ily"
\include "im-just-from-here-structure.ily"

\header {
  title = "I'm Just From Here"
  subtitle = "Never Been Nowhere, Never Done Nothing"
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
    \Score \consists #(set-bars-per-line '(4))
  }
}

\score {
  <<
    \numericTimeSignature
    \changes
    \melody
  >>
}
