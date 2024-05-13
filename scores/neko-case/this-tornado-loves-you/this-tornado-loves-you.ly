\version "2.25.15"

\include "helpers/settings.ily"
\include "helpers/set-bars-per-line.ily"
\include "this-tornado-loves-you-melody.ily"
\include "this-tornado-loves-you-lyrics.ily"
\include "this-tornado-loves-you-chords.ily"
\include "this-tornado-loves-you-structure.ily"

\header {
  title = "This Tornado Loves You"
}

melody = \new Staff = "melody" <<
  <<
    \melody
    \addlyrics \text
  >>
  \structure
>>


\book {
  \header {
    title = "This Tornado Loves You"
    composer = "Neko Case"

  }
  \layout {
    \context {
      \Score
      \consists #(set-bars-per-line '(5
                                      4 4 3
                                      4 4 5
                                      4 4 4 4
                                      5 4 4
                                      4 4 4
                                      4 4 4 6
                                      4 4 4 4))
    }
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
  \context {
    \Score
    \consists #(set-bars-per-line '(4))
  }
}

\book {
  \bookOutputSuffix "form"

  \header {
    subtitle = "Neko Case"
  }

  \paper {
    score-system-spacing.basic-distance = #18
  }

  \markup \vspace #1

  \score {
    \form_layout
    <<
      \numericTimeSignature
      \changes_a
      \new Staff \with {
        instrumentName = \markup \box \bold "A"
      } {
        \structure_a
      }
    >>
  }

  \score {
    \form_layout
    <<
      \numericTimeSignature
      \changes_b
      \new Staff \with {
        instrumentName = \markup \box \bold "B"
      } {
        \structure_b
      }
    >>
  }

  \score {
    \form_layout
    <<
      \numericTimeSignature
      \changes_c
      \new Staff \with {
        instrumentName = \markup \box \bold "C"
      } {
        \structure_c
      }
    >>
  }

  \score {
    \form_layout
    <<
      \numericTimeSignature
      \changes_d
      \new Staff \with {
        instrumentName = \markup \box \bold "D"
      } {
        \structure_d
      }
    >>
  }

  \score {
    \form_layout
    <<
      \numericTimeSignature
      \changes_e
      \new Staff \with {
        instrumentName = \markup \box \bold "E"
      } {
        \structure_e
      }
    >>
  }

  \score {
    \form_layout
    <<
      \numericTimeSignature
      \changes_f
      \new Staff \with {
        instrumentName = \markup \box \bold "F"
      } {
        \structure_f
      }
    >>
  }

  \score {
    \form_layout
    <<
      \numericTimeSignature
      \changes_g
      \new Staff \with {
        instrumentName = \markup \box \bold "G"
      } {
        \structure_g
      }
    >>
  }

  \markup \vspace #2

  \markup \fill-line {
    \column
    \override #'(padding . 5)
    \table #'(1 -1 -1)
    {
      \bold A \italic "" "vocals enter on repeat"
      \bold B \italic "" ""
      \bold C \italic "" ""
      \bold B \italic "" "with inversion"
      \bold D \italic "" "2 repeats second group"
      \bold E \italic "" ""
      \bold F \italic "" ""
      \bold E \italic "" ""
      \bold A \italic "" "no repeats"
      \bold G \italic "" ""
      \bold E \italic "x 4" "3,4 with D pedal"
    }
  }
}
