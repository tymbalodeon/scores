\version "2.23.80"

\include "settings.ily"
\include "style.ily"
\include "same-changes-melody.ily"
\include "same-changes-chords.ily"
\include "same-changes-structure.ily"

\header {
  title = "Same Changes"
  composer = "Sam Phillips"
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
  indent = #0
  ragged-last = ##f
}

\book {
  \bookOutputSuffix "form"
  \paper {
    score-system-spacing.basic-distance = #18
  }
  \score {
    \form_layout
    <<
      \numericTimeSignature
      \changes_intro
      \structure_intro
    >>
  }

  \score {
    \form_layout
    <<
      \numericTimeSignature
      \changes_verse
      \structure_verse
    >>
  }

  \score {
    \form_layout
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
      \bold Vamp \italic "x 8" "rhythm joins after 4"
      \bold Verse \italic "x 1" ""
      \bold Chorus \italic "x 2" ""
      \bold Verse \italic "x 1" ""
      \bold Chorus \italic "x 2" ""
      \bold Vamp \italic "x 8" "no bass"
      \bold Chorus \italic "x 2" "instrumental"
      \bold Verse \italic "x 1" ""
      \bold Chorus \italic "x 4" "last 2 with more guitar, tag last 4"
      \bold Vamp \italic "x 2"
    }
  }
}
