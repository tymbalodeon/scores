\version "2.25.15"

\include "helpers/settings.ily"
\include "helpers/set-bars-per-line.ily"
\include "in-a-sweater-poorly-knit-melody.ily"
\include "in-a-sweater-poorly-knit-chords.ily"
\include "in-a-sweater-poorly-knit-structure.ily"

\header {
  title = "In A Sweater Poorly Knit"
  subtitle = "mewithoutYou"
}

\layout {
  ragged-last = ##f
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
    \bold Verse \italic "x 4" ""
    \bold Chorus \italic "" ""
    \bold Verse \italic "x 4" ""
    \bold Chorus \italic "x 2" ""
    \bold Verse \italic "x 4" ""
    \bold Chorus \italic "x 4" ""
  }
}
