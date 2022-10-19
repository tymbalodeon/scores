\version "2.23.11"

\include "settings.ily"
\include "ghost-world-chords.ily"
\include "ghost-world-melody.ily"

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

\score {
  \layout {
    ragged-last = ##f
  }
  <<
    \changesCoda
    {
      \key e \major
      \melodyCoda
    }
  >>
}
