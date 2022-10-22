\version "2.23.11"

\include "settings.ily"
\include "style.ily"
\include "mothers-mothers-magazines-chords.ily"
\include "mothers-mothers-magazines-melody.ily"

\header {
  title = "Mother's Mother's Magazines"
  composer = "Cate Le Bon"
}

structure = {
  \repeat volta 2 {
    s1 * 2 |
  }
  \repeat volta 2 {
    \time 3/4
    s2. |
    \time 4/4
    s1 |
  }
  \break
  \time 3/4
  s2. |
  \time 4/4
  s1 |
  \time 5/4
  \repeat unfold 2 {
    s2
  }
  s4 |
  \break
  \time 4/4
  s1 |
  \bar "||"
  \segnoMark \default
  s1 |
  \repeat volta 2 {
    \mark \markup { \musicglyph "scripts.coda" }
    s1 * 2 |
  }
  \break
  \repeat volta 2 {
    s1 * 2 |
  }
}

melody = {
      \key f \major
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
