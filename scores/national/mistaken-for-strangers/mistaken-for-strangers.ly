\version "2.25.5"

\include "helpers/settings.ily"
\include "helpers/set-bars-per-line.ily"
\include "mistaken-for-strangers-melody.ily"
\include "mistaken-for-strangers-chords.ily"
\include "mistaken-for-strangers-structure.ily"

\header {
  title = "Mistaken For Strangers"
  subtitle = "The National"
}

\paper {
  score-system-spacing.basic-distance = #18
}

\layout {
  ragged-last = ##f
  \context {
    \Score
    \consists #(set-bars-per-line '(4))
  }
}

\markup \vspace #1

\score {
  <<
    \numericTimeSignature
    \changes_verse
    \new Staff \with {
      instrumentName = \markup \box "Verse"
    } {
      \structure_verse
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
      \structure_chorus
    }
  >>
}

\markup \vspace #2

\markup \fill-line {
  \column
  \override #'(padding . 5)
  \table #'(1 -1 -1)
  {
    \bold Verse \italic "x 6" "2x instrumental, then vocals"
    \bold Chorus \italic "" ""
    \bold Verse \italic "x 5" "1x instrumental, then vocals"
    \bold Chorus \italic "x 2" ""
  }
}
