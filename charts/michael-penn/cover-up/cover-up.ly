\version "2.23.80"

\include "settings.ily"
\include "style.ily"
\include "cover-up-melody.ily"
\include "cover-up-chords.ily"
\include "cover-up-structure.ily"

\header {
  title = "Cover Up"
  composer = "Michael Penn"
}

\paper {
  score-system-spacing.basic-distance = #18
}

\layout {
  indent = #0
  ragged-last = ##f
  \context {
    \Score
    \consists #(set-bars-per-line '(4))
  }
}

\score {
  <<
    \numericTimeSignature
    \changes_intro
    \structure_intro
  >>
}

\score {
  <<
    \numericTimeSignature
    \changes_verse
    \structure_verse
  >>
}

\score {
  <<
    \numericTimeSignature
    \changes_chorus
    \structure_chorus
  >>
}

\markup \fill-line {
  \column
  \override #'(padding . 5)
  \table #'(1 -1 -1)
  {
    \bold Intro \italic "x 1" ""
  }
}
