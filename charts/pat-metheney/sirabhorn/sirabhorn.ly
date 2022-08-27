\version "2.23.11"
\include "../../../settings.ily"
\include "../../../style.ily"

\header {
  title = "Sirabhorn"
  composer = "Pat Metheney"
}

melody = \relative c'' {
  \repeat volta 2 {
    e4 d d8 e |
    ef4 c8 df~ df4 |
    c af8 bf~ bf4 |
    \tuplet 3/2 { a4 fs g~ } g4 |
    R2. * 12 |
  }
  R2. * 12 |
  \bar "|."
}

changes = \chords {
  \repeat volta 2 {
    c2. | bf:m | gf | e:m |
    b | gf:m | e | d:m |
    \repeat unfold 2 { gf | f:m | }
    d | s2. * 3 |
  }
  a2. | g | gf:m | f |
  e | s2. * 3 |
}

\score {
  \layout {
    \context {
      \Score
      \consists #(bars-per-line-engraver '(4))
    }
  }
  <<
    \changes
    {
      \time 3/4
      \melody
    }
  >>
}
