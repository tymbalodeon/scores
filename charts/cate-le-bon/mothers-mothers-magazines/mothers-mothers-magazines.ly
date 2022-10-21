\version "2.23.11"

\include "settings.ily"
\include "style.ily"

\header {
  title = "Mother's Mother's Magazines"
  composer = "Cate Le Bon"
}

melody = \relative c' \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  \repeat volta 2 {
    \repeat unfold 2 {
      c2. c4 |
    }
  }
  \repeat volta 2 {
    \time 3/4
    c2 c4 |
    \time 4/4
    c1 |
  }
  \time 3/4
  c4 c2 |
  \time 4/4
  c1 |
  \time 5/4
  c4 c c c c |
  \time 4/4
  c8 c~ c2. |
  c2 c |
  \repeat unfold 2 {
    \repeat volta 2 {
      \repeat unfold 2 {
        c2. c4 |
      }
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
