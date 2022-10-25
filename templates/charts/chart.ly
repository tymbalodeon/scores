\version "2.23.11"

\include "settings.ily"
\include "melody.ily"
\include "chords.ily"
\include "structure.ily"

\header {
  title = "Title"
  composer = "Composer"
}

melody = \new Staff {
  <<
    \melody
    \structure
  >>
}

\score {
  <<
    \numericTimeSignature
    \changes
    \melody
  >>
}
