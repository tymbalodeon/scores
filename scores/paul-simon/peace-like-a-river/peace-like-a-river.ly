\version "2.25.13"

\include "helpers/settings.ily"
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
