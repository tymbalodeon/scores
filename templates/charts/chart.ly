\version "2.23.80"

\include "settings.ily"
\include "style.ily"
\include "melody.ily"
\include "chords.ily"
\include "structure.ily"

\header {
  title = "Title"
  composer = "Composer"
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
      \new Staff \with {
        instrumentName = \markup \box "Verse"
      } {
        <<
          \changes_verse
          \structure_verse
        >>
      }
    >>
  }

  \score {
    \form_layout
    <<
      \numericTimeSignature
      \new Staff \with {
        instrumentName = \markup \box "Chorus"
      } {
        <<
          \changes_chorus
          \structure_chorus
        >>
      }
    >>
  }

  \markup \fill-line {
    \column
    \override #'(padding . 5)
    \table #'(1 -1 -1)
    {
      \bold Verse \italic "x 1" ""
      \bold Chorus \italic "x 1" ""
    }
  }
}
