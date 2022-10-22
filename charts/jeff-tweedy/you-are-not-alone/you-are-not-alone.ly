\version "2.23.11"

\include "settings.ily"
\include "style.ily"
\include "you-are-not-alone-melody.ily"
\include "you-are-not-alone-chords.ily"

\header {
  title = "You Are Not Alone"
  composer = "Jeff Tweedy"
}

structure = {
  \time 4/4
  \mark "Intro"
  s1 * 4 |
  \break
  \mark "Verse"
  \repeat volta 2 {
    s1 * 4 |
    \break
    s1 * 5 |
    \break
    s1 * 4 |
    \break
    s1 * 4 |
  }
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
