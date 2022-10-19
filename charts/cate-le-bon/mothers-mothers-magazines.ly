\version "2.23.11"

\include "../../settings.ily"
\include "../../style.ily"

\header {
  title = "Mother's Mother's Magazines"
  composer = "Cate Le Bon"
}


melody = \relative c' {
  s1*8 |
  s1.*3
}

changes = \chords {
  \repeat volta 2 {
    c1:sus | c4 f2. |
    bf1:sus | bf4 ef2. |
  }
  \repeat volta 2 {
    \time 2/2 a1:m | \time 3/2 f2 c1 |
  }
  bf2 af1 |
  f1. |
  \time 2/2
  \repeat unfold 2 {
    a2 f |
  }
  a g |
}

\score {
  <<
    \changes
    {
      \key f \major
      \time 2/2
       \melody
    }
  >>
}
