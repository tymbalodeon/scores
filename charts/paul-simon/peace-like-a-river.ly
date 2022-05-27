\version "2.23.8"

\include "../../settings.ly"
\include "peace-like-a-river-chords.ly"

\header {
  title = "Peace Like A River"
  composer = "Paul Simon"
}

\score {
  <<
    \changes
    {
      \time 2/2
      \key d \minor
      s1 * 64
    }
  >>
}
