\version "2.23.82"

\include "settings.ily"
\include "style.ily"
\include "starman-melody.ily"
\include "starman-changes.ily"
\include "starman-structure.ily"

\header {
  title = "Starman"
}

melody = \new Staff {
  <<
    \melody
    \structure
  >>
}

\layout {
  \context {
    \Score \consists #(set-bars-per-line '(4))
  }
}

\book {
  \header {
    composer = "David Bowie"
  }

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

  \header {
    subtitle = "David Bowie"
  }

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
        instrumentName = \markup \box "Intro"
      } {
        <<
          \structure_intro
        >>
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

  \score {
    \form_layout
    <<
      \numericTimeSignature
      \changes_solo
      \new Staff \with {
        instrumentName = \markup \box "Solo"
      } {
        <<
          \structure_solo
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
      \bold Intro \italic "" ""
      \bold Verse \italic "" ""
      \bold Chorus \italic "" ""
      \bold Solo \italic "" ""
      \bold Verse \italic "" ""
      \bold Chorus \italic "" ""
    }
  }
}
