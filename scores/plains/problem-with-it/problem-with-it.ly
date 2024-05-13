\version "2.25.13"

\include "helpers/settings.ily"
\include "helpers/set-bars-per-line.ily"
\include "problem-with-it-chords.ily"
\include "problem-with-it-structure.ily"

\header {
  title = "Problem With It"
  subtitle = "Plains"
}

\paper {
  score-system-spacing.basic-distance = #20
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
    \bold Verse \italic "x 2" ""
    \bold Chorus \italic "x 4" ""
    \bold Verse \italic "" "guitar solo"
    \bold Verse \italic "x 2" ""
    \bold Chorus \italic "x 4" "extra bar of Eb"
    \bold Chorus \italic "x 4" "guitar solo"
    \bold Chorus \italic "x 2" "no rhythm"
    \bold Chorus \italic "x 2" "with rhythm"
  }
}
