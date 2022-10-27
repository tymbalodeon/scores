\version "2.23.11"

\include "settings.ily"
\include "style.ily"
\include "mistaken-for-strangers-melody.ily"
\include "mistaken-for-strangers-chords.ily"
\include "mistaken-for-strangers-structure.ily"

\header {
  title = "Mistaken For Strangers"
  composer = "National"
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
    \consists #(set-bars-per-line '(4))
  }
}

\score {
  <<
    \numericTimeSignature
    \changes
    \melody
  >>
}