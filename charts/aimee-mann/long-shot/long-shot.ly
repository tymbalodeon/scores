\version "2.23.11"

\include "../../../settings.ily"
\include "../../../style.ily"
\include "long-shot-chords.ly"
\include "long-shot-melody.ly"

\header {
  title = "Long Shot"
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
