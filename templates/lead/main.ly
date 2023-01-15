\version "2.24.0"

\include "settings.ily"
\include "style.ily"

\include "changes.ily"
\include "lyrics.ily"
\include "melody.ily"
\include "structure.ily"

\header {
  title = "Title"
  composer = "Composer"
}

melody = \new Staff {
  <<
    \melody \addlyrics \text
    \structure
  >>
}

\layout {
  \context {
    \Score \consists
    #(set-bars-per-line '(4))
  }
}

\score {
  <<
    \numericTimeSignature
    \changes
    \melody
  >>
}
