\version "2.23.8"
\include "../../settings.ly"
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
