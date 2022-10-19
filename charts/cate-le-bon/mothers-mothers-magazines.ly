\version "2.23.11"

\include "../../settings.ily"
\include "../../style.ily"

\header {
  title = "Mother's Mother's Magazines"
  composer = "Cate Le Bon"
}


melody = \relative c' { R1*12 | }

changes = \chords {
  c1 | c4 f2. |
  bf1 | bf4 ef2. |
  c1 | c4 f2. |
  bf1 | bf4 ef2. |
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
