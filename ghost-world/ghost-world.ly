\version "2.23.8"

\include "../settings.ly"
\include "ghost-world-chords.ly"
\include "ghost-world-melody.ly"

\header {
  title = "Ghost World"
  composer = "Aimee Mann"
}

\score {
  <<
    \changes
    {
      \key e \major
      \melody
    }
  >>
}
