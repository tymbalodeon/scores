\version "2.25.6"

\include "helpers/settings.ily"
\include "helpers/set-bars-per-line.ily"
\include "same-changes-melody.ily"
\include "same-changes-chords.ily"
\include "same-changes-structure.ily"

\header {
  title = "Same Changes"
  subtitle = "Sam Phillips"
}

melody = \new Staff {
  <<
    \melody
    \structure
  >>
}

\layout {
  \context {
    \Score
    \consists #(set-bars-per-line '(4))
  }
}

\book {
  \score {
    <<
      \numericTimeSignature
      \changes
      \melody
    >>
  }
}

form_layout = \layout {
  ragged-last = ##f
}

\book {
  \bookOutputSuffix "form"

  \paper {
    score-system-spacing.basic-distance = #18
  }

  \markup \vspace #1

  \score {
    \form_layout
    <<
      \numericTimeSignature
      \changes_intro
      \new Staff \with {
        instrumentName = \markup \box "Vamp"
      } {
        \structure_intro
      }
    >>
  }

  \score {
    \form_layout
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
    \form_layout
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
      \bold Vamp \italic "x 8" "rhythm joins after 4"
      \bold Verse \italic "" ""
      \bold Chorus \italic "x 2" ""
      \bold Verse \italic "" ""
      \bold Chorus \italic "x 2" ""
      \bold Vamp \italic "x 8" "no bass"
      \bold Chorus \italic "x 2" "instrumental"
      \bold Verse \italic "" ""
      \bold Chorus \italic "x 4" "last 2 with more guitar, tag last 4"
      \bold Vamp \italic "x 2"
    }
  }
}
