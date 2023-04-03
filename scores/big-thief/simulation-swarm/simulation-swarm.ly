\version "2.25.3"

\include "settings.ily"
\include "style.ily"
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

  \markup \vspace #2

  \markup \fill-line {
    \column
    \override #'(padding . 5)
    \table #'(1 -1 -1)
    {
      \bold Verse \italic "x 4" "instrumental"
      \bold Verse \italic "x 4" ""
      \bold Verse \italic "x 2" "interlude"
      \bold Verse \italic "x 8" ""
      \bold Chorus \italic "" "no repeats"
      \bold Verse \italic "x 6" ""
      \bold Solo \italic "x 4" ""
      \bold Verse \italic "x 6" ""
      \bold Chorus \italic "" "2 repeats; al Coda"
      \bold Solo \italic "x 8" ""
    }
  }
}
