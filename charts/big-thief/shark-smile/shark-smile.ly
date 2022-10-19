\version "2.23.11"

\include "settings.ily"
\include "shark-smile-chords.ily"
\include "shark-smile-melody.ily"

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
