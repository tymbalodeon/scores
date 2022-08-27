\version "2.23.11"

\include "../../../settings.ily"
\include "../../../style.ily"
\include "ghost-world-chords.ily"
\include "ghost-world-melody.ily"

\header {
  title = "Ghost World"
  composer = "Aimee Mann"
}

\score {
  \layout {
    \context {
      \Score
      \consists #(bars-per-line-engraver '(4))
    }
  }
  <<
    \changes
    {
      \key e \major
      \melody
    }
  >>
}
