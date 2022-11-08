\version "2.23.80"

\include "settings.ily"
\include "style.ily"
\include "same-changes-chords.ily"
\include "same-changes-structure.ily"

\header {
  title = "Same Changes"
  composer = "Sam Phillips"
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
    \bold Intro \italic "x 4" "no rhythm"
    \bold Intro \italic "x 4" "with rhythm"
    \bold Verse \italic "x 1" ""
    \bold Chorus \italic "x 2" ""
    \bold Verse \italic "x 1" ""
    \bold Chorus \italic "x 2" ""
    \bold Intro \italic "x 4" "no rhythm"
    \bold Chorus \italic "x 2" "instrumental"
    \bold Verse \italic "x 1" ""
    \bold Chorus \italic "x 2" ""
  }
}
