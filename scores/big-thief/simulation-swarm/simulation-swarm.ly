\version "2.25.5"

\include "settings.ily"
\include "helpers/set-bars-per-line.ily"
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
    composer = "Big Thief"
  }

  \paper {
    system-system-spacing.basic-distance = #11
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

  \markup \italic "...in the belly of the empty night..."

  \score {
    \form_layout
    <<
      \numericTimeSignature
      \changes_chorus_one
      \new Staff \with {
        instrumentName = \markup \box "Chorus"
      } {
        <<
          \melody_chorus_one
          \structure_chorus_one
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

  \markup \italic "...as the first little angel..."

  \score {
    \form_layout
    <<
      \numericTimeSignature
      \changes_solo
      \new Staff \with {
        instrumentName = \markup \box "Solo (4x)"
      } {
        \structure_solo
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

  \markup \italic "...in the belly of the empty night..."

  \score {
    \form_layout
    <<
      \numericTimeSignature
      \changes_chorus_two
      \new Staff \with {
        instrumentName = \markup \box "Chorus"
      } {
        <<
          \melody_chorus_two
          \structure_chorus_two
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
        instrumentName = \markup \box "Solo (8x)"
      } {
        \structure_solo
      }
    >>
  }
}
