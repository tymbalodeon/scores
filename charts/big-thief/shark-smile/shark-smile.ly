\version "2.23.11"
\include "../../../settings.ily"
\include "shark-smile-chords.ly"
\include "shark-smile-melody.ly"

\header {
  title = "Shark Smile"
  composer = "Adrianne Lenker (Big Thief)"
}

\score {
  <<
    \changes
    {
      \key a \major
      \melody
    }
  >>
}
