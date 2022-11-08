\version "2.23.80"

\include "settings.ily"
\include "style.ily"
\include "problem-with-it-chords.ily"
\include "problem-with-it-structure.ily"

\header {
  title = "Problem With It"
  composer = "Plains"
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
  \table #'(1 0 -1)
  {
    \bold Verse \italic "x 2" ""
    \bold Chorus \italic "x 4" ""
    \bold Verse \italic "x 1" "guitar solo"
    \bold Verse \italic "x 2" ""
    \bold Chorus \italic "x 4" "extra bar of Eb"
    \bold Chorus \italic "x 4" "guitar solo"
    \bold Chorus \italic "x 2" "no rhythm"
    \bold Chorus \italic "x 2" "with rhythm"
  }
}
