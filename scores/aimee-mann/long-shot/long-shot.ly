\version "2.25.17"

\include "helpers/settings.ily"
\include "helpers/set-bars-per-line.ily"
\include "long-shot-chords.ily"
\include "long-shot-melody.ily"
\include "long-shot-structure.ily"

\header {
  title = "Long Shot"
}

\layout {
  \context {
    \Score
    \consists #(set-bars-per-line '(4))
  }
}

\book {
  \header {
    composer = "Aimee Mann"
  }

  \score {
    <<
      \changes
      {
        \key e \major
        \melody
      }
    >>
  }

  \score {
    \layout {
      ragged-last = ##f
    }
    <<
      \changesCoda
      {
        \key e \major
        \melodyCoda
      }
    >>
  }
}

\book {
  \bookOutputSuffix "form"

  \header {
    subtitle = "Aimee Mann"
  }

  \paper {
    score-system-spacing.basic-distance = #18
  }

  \markup \vspace #1

  \score {
    <<
      \numericTimeSignature
      \changes_verse
      \new Staff \with {
        instrumentName = \markup \box "Chords"
      } {
        \structure_verse
      }
    >>
  }

  \score {
    \layout {
      ragged-last = ##f
    }
    <<
      \numericTimeSignature
      \changes_end
      \new Staff \with {
        instrumentName = \markup \box "End"
      } {
        \structure_end
      }
    >>
  }

  \markup \vspace #2

  \markup \fill-line {
    \column
    \override #'(padding . 5)
    \table #'(1 -1 -1)
    {
      \bold Intro "" ""
      \bold Verse \italic "x 2" ""
      \bold Chorus "" ""
      \bold Solo "" ""
      \bold Verse \italic "" ""
      \bold Chorus "" ""
      \bold End \italic "x ?" ""
    }
  }
}
