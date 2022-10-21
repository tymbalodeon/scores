\version "2.23.11"

\include "settings.ily"
\include "style.ily"

\header {
  title = "You Are Not Alone"
  composer = "Jeff Tweedy"
}

melody = \relative c' \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  \repeat volta 2 {
    \time 4/4
    c2. c4 |
    s1 |
    \repeat unfold 2 {
      c2. c4 |
    }
    \repeat unfold 3 {
      s1 |
    }
    c2 c |
    \repeat unfold 4 {
      s1 |
    }
    c2 c4 c |
    s1 * 2 |
    \repeat unfold 2 {
      c2. c4 |
    }
  }
}

changes = \chords {
  \time 4/4
  \repeat volta 2 {
    e2.:m  b4:m|
    e1:m |
    g2. c4 |
    g2. b4:m |
    \break
    e1:m |
    s |
    a:m |
    g2 c |
    g1 |
    \break
    c |
    g |
    a:m |
    e2:m g4 gs:dim |
    \break
    a1:m |
    c |
    g2. c4 |
    g2. b4:m |
  }
}

\score {
  <<
    \numericTimeSignature
    \changes
    {
      \key e \minor
      \melody
    }
  >>
}
