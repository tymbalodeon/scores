\version "2.23.80"

\include "settings.ily"
\include "style.ily"
\include "in-a-sweater-poorly-knit-melody.ily"
\include "in-a-sweater-poorly-knit-chords.ily"
\include "in-a-sweater-poorly-knit-structure.ily"

\header {
  title = "In A Sweater Poorly Knit"
  subtitle = "Mewithoutyou"
}

\layout {
  \context {
    \Score
    \consists #(set-bars-per-line '(4))
  }
}

\paper {
  score-system-spacing.basic-distance = #18
}

\markup \vspace #1

\score {
  <<
    \numericTimeSignature
    \changes_verse
    \new Staff \with {
      instrumentName = \markup \box "Verse"
    } {
      <<
        \structure_verse
      >>
    }
  >>
}

\score {
  <<
    \numericTimeSignature
    \changes_chorus
    \new Staff \with {
      instrumentName = \markup \box "Chorus"
    } {
      <<
        \structure_chorus
      >>
    }
  >>
}

\markup \vspace #2

\markup \fill-line {
  \column
  \override #'(padding . 5)
  \table #'(1 -1 -1)
  {
    \bold Verse \italic "" ""
    \bold Chorus \italic "" ""
  }
}
