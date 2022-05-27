\version "2.23.8"

\include "../../settings.ly"
\include "peace-like-a-river-chords.ly"
\include "peace-like-a-river-melody.ly"

\header {
  title = "Peace Like A River"
  composer = "Paul Simon"
}

\score {
  <<
    \changes
    {
      \time 12/8
      \key d \minor
      \melody
    }
  >>
}
