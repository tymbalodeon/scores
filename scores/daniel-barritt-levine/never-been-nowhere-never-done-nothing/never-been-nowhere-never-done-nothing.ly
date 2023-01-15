\version "2.24.0"

\include "settings.ily"
\include "style.ily"

\include "never-been-nowhere-never-done-nothing-changes.ily"
\include "never-been-nowhere-never-done-nothing-melody.ily"
\include "never-been-nowhere-never-done-nothing-structure.ily"

\header {
  title = "I'm Just From Here"
  subtitle = "Never Been Nowhere, Never Done Nothing"
  composer = "Daniel Barritt Levine"
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
