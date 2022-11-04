\version "2.23.80"

\include "settings.ily"
\include "peace-like-a-river-chords.ily"
\include "peace-like-a-river-melody.ily"

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
