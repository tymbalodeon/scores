\version "2.23.80"

\include "settings.ily"
\include "simulation-swarm-chords.ily"
\include "simulation-swarm-melody.ily"
\include "simulation-swarm-structure.ily"

\header {
  title = "Simulation Swarm"
}

repeatNumbers = {
  \override Dynamics.TextScript.padding = #3
  s1 * 2^\markup { \box \normal-text "4x" } |
  s1 * 2^\markup { \box \normal-text "4x" } |
  s1 * 2^\markup { \box \normal-text "2x" } |
  s1 * 2^\markup { \box \normal-text "8x" } |
}

\book {
  \header {
    composer = "Adrianne Lenker (Big Thief)"
  }

  \score {
    <<
      \new Dynamics { \repeatNumbers }
      \changes
      {
        \key df \major
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

  \markup \vspace #2

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
      \changes_solo
      \new Staff \with {
        instrumentName = \markup \box "Solo"
      } {
        \structure_solo
      }
    >>
  }

  \markup \vspace #4

  \markup \fill-line {
    \column
    \override #'(padding . 5)
    \table #'(1 -1)
    {
      \bold Verse ""
      \bold Chorus ""
    }
  }
}
