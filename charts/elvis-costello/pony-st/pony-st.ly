\version "2.23.80"

\include "settings.ily"
\include "style.ily"
\include "pony-st-melody.ily"
\include "pony-st-chords.ily"
\include "pony-st-structure.ily"

\header {
  title = "Pony St"
  subtitle = "Elvis Costello"
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
        \melody_verse
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
