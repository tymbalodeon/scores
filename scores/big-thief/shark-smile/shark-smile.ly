\version "2.25.6"

\include "helpers/settings.ily"
\include "helpers/set-bars-per-line.ily"
\include "shark-smile-chords.ily"
\include "shark-smile-melody.ily"
\include "shark-smile-structure.ily"

\header {
  title = "Shark Smile"
}

\book {
  \header {
    composer = "Big Thief"
  }
  \score {
    <<
      \changes
      {
        \key a \major
        \melody
      }
    >>
  }
}

form_layout = \layout {
  ragged-last = ##f
  \context {
    \Score
    \consists #(set-bars-per-line '(4))
  }
}

\book {
  \bookOutputSuffix "form"

  \header {
    subtitle = "Big Thief"
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
        <<
          \melody_verse
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
        \structure_chorus
      }
    >>
  }

  \score {
    \layout {
      \context {
        \Score
        \consists #(set-bars-per-line '(5 4))
      }
    }

    <<
      \numericTimeSignature
      \changes_bridge
      \new Staff \with {
        instrumentName = \markup \box "Bridge"
      } {
        <<
          \melody_bridge
          \structure_bridge
        >>
      }
    >>
  }

  \markup \vspace #1

  \markup \fill-line {
    \column
    \override #'(padding . 5)
    \table #'(1 -1 -1)
    {
      \bold Intro \italic "x 4" ""
      \bold Verse \italic "" "instrumental (1st ending)"
      \bold Verse \italic "x 2" "vocals (2nd ending)"
      \bold Chorus \italic "" ""
      \bold Verse \italic "x 2" "vocals (2nd ending)"
      \bold Chorus \italic "" ""
      \bold Verse \italic "" "guitar solo (1st ending)"
      \bold Verse \italic "x 2" "al Coda"
      \bold Bridge \italic "" ""
      \bold Chorus \italic "x 2" ""
    }
  }
}
