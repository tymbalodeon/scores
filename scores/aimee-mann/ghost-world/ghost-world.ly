\version "2.25.22"

\include "helpers/settings.ily"
\include "helpers/set-bars-per-line.ily"
\include "ghost-world-chords.ily"
\include "ghost-world-melody.ily"
\include "ghost-world-structure.ily"

\book {
  \header {
    title = "Ghost World"
    composer = "Aimee Mann"
  }

  \score {
    <<
      \changes
      {
        \key_signature
        \melody
      }
    >>
  }

  \score {
    <<
      \changes_coda
      {
        \key_signature
        \melodyCoda
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
    title = "Ghost World"
    subtitle = "Aimee Mann"
  }

  \paper {
    score-system-spacing.basic-distance = #18
  }

  \markup \vspace #1

  \score {
    \form_layout
    <<
      \numericTimeSignature
      \changes_hits
      \new Staff \with {
        instrumentName = \markup \box "Hits"
      } {
        <<
          \melody_hits
          \structure_hits
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
        <<
          \melody_chorus
          \structure_chorus
        >>
      }
    >>
  }

  \score {
    \form_layout
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

  \pageBreak

  \score {
    \form_layout
    <<
      \numericTimeSignature
      \form_changes_coda
      \new Staff \with {
        instrumentName = \markup \box "Coda"
      } {
        <<
          \melody_coda
          \structure_coda
        >>
      }
    >>
  }

  \markup \vspace #2

  \markup \fill-line {
    \column
    \override #'(padding . 5)
    \table #'(1 -1)
    {
      \bold Hits ""
      \bold Verse ""
      \bold Chorus "1st ending"
      \bold Verse ""
      \bold Chorus "2nd ending"
      \bold Bridge ""
      \bold Hits "mm. 1-4 no rhythm"
      \bold Verse ""
      \bold Chorus "al Coda"
      \bold Coda "3 repeats"
      \bold Hits ""
    }
  }
}
