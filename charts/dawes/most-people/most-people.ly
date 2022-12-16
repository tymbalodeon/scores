\version "2.23.82"

\include "settings.ily"
\include "style.ily"
\include "most-people-chords.ily"
\include "most-people-structure.ily"

\header {
  title = "Most People"
  subtitle = "Dawes"
}


\layout {
  \context {
    \Score \consists #(set-bars-per-line '(4))
  }
}

form_layout = \layout {
  ragged-last = ##f
}

\paper {
  score-system-spacing.basic-distance = #18
}

\markup \vspace #1

\score {
  \form_layout
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
  \form_layout
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
