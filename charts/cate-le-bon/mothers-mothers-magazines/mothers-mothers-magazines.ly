\version "2.23.11"

\include "settings.ily"
\include "style.ily"

\header {
  title = "Mother's Mother's Magazines"
  composer = "Cate Le Bon"
}

melody = \relative c' {
  \repeat volta 2 {
    s1 * 2 |
  }
  \repeat volta 2 {
    \time 3/4
    s2. |
    \time 4/4
    s1 |
  }
  \time 3/4
  s2. |
  \time 4/4
  s1 |
  \time 5/4
  s1 s4 |
  \time 4/4
  s1 * 2 |
  \repeat unfold 2 {
    \repeat volta 2 {
      s1 * 2 |
    }
  }
}

changes = \chords {
  \repeat volta 2 {
    c2.:sus f4 |
    bf2.:sus ef4 |
  }
  \repeat volta 2 {
    \time 3/4
    a2:m  f4|
    \time 4/4
    c1 |
  }
  \break
  \time 3/4
  bf4 af2 |
  \time 4/4
  f1 |
  \time 5/4
  \repeat unfold 2 {
    a4 f
  }
  a
  \break
  \time 4/4
  g1 |
  \bar "||"
  \segnoMark \default
  g1 |
  \repeat volta 2 {
    \mark \markup { \musicglyph "scripts.coda" }
    g2.:sus c4 |
    f2.:sus bf4 |
  }
  \break
  \repeat volta 2 {
    c2.:sus f4 |
    bf2.:sus ef4 |
  }
}

\score {
  <<
    \numericTimeSignature
    \changes
    {
      \key f \major
      \melody
    }
  >>
}
