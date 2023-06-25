\version "2.25.6"

\include "helpers/settings.ily"
\include "helpers/set-bars-per-line.ily"
\include "one-of-us-melody.ily"
\include "one-of-us-changes.ily"
\include "one-of-us-structure.ily"

\paper {
  score-system-spacing.basic-distance = #18
}

\header {
  title = "One Of Us"
  subtitle = "Dawes"
}

\layout {
  ragged-last = ##f
  \context {
    \Score \consists #(set-bars-per-line '(4))
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
        \melody_chorus
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
