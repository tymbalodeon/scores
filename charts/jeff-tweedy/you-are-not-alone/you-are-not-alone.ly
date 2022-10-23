\version "2.23.11"

\include "settings.ily"
\include "style.ily"
\include "you-are-not-alone-melody.ily"
\include "you-are-not-alone-chords.ily"
\include "you-are-not-alone-structure.ily"

\header {
  title = "You Are Not Alone"
  composer = "Jeff Tweedy"
}

melody = {
  \key e \minor
  <<
    \melody
    \structure
  >>
}

\score {
  <<
    \numericTimeSignature
    \changes
    \melody
  >>
}
