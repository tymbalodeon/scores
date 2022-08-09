\version "2.23.8"

\include "../../../settings.ly"
\include "long-shot-chords.ly"
\include "long-shot-melody.ly"

\header {
  title = "Long Shot"
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
