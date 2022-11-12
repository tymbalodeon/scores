\version "2.23.80"

\include "settings.ily"
\include "style.ily"
\include "cover-up-melody.ily"
\include "cover-up-chords.ily"
\include "cover-up-structure.ily"

\header {
  title = "Cover Up"
  subtitle = "Michael Penn"
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

\markup \vspace #2

\score {
  <<
    \numericTimeSignature
    \changes_intro
    \new Staff \with {
      instrumentName = \markup \box "Intro"
    } {
      \structure_intro
    }
  >>
}

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

\markup \vspace #4

\markup \fill-line {
  \column
  \override #'(padding . 5)
  \table #'(1 -1 -1)
  {
    \bold Intro \italic "" ""
    \bold Verse \italic "" "repeat 3x"
    \bold Chorus \italic "" ""
    \bold Verse \italic "" "repeat 3x"
    \bold Chorus \italic "" ""
    \bold Verse \italic "" "no bass; in 4"
    \bold Verse \italic "" "with bass; no repeats"
    \bold Chorus \italic "" "with tag"
  }
}
