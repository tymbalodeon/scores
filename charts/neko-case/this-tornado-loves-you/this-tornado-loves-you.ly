\version "2.23.80"

\include "settings.ily"
\include "style.ily"
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
      \changes_one
      \new Staff \with {
        instrumentName = \markup \box \bold "A"
      } {
        \structure_one
      }
    >>
  }

  \score {
    \form_layout
    <<
      \numericTimeSignature
      \changes_two
      \new Staff \with {
        instrumentName = \markup \box \bold "B"
      } {
        \structure_one
      }
    >>
  }

  \score {
    \form_layout
    <<
      \numericTimeSignature
      \changes_three
      \new Staff \with {
        instrumentName = \markup \box \bold "C"
      } {
        \structure_three
      }
    >>
  }

  \score {
    \form_layout
    <<
      \numericTimeSignature
      \changes_four
      \new Staff \with {
        instrumentName = \markup \box \bold "D"
      } {
        \structure_one
      }
    >>
  }

  \score {
    \form_layout
    <<
      \numericTimeSignature
      \changes_five
      \new Staff \with {
        instrumentName = \markup \box \bold "E"
      } {
        \structure_five
      }
    >>
  }

  \score {
    \form_layout
    <<
      \numericTimeSignature
      \changes_six
      \new Staff \with {
        instrumentName = \markup \box \bold "F"
      } {
        \structure_one
      }
    >>
  }

  \score {
    \form_layout
    <<
      \numericTimeSignature
      \changes_seven
      \new Staff \with {
        instrumentName = \markup \box \bold "G"
      } {
        \structure_one
      }
    >>
  }

  \score {
    \form_layout
    <<
      \numericTimeSignature
      \changes_eight
      \new Staff \with {
        instrumentName = \markup \box \bold "H"
      } {
        \structure_one
      }
    >>
  }

  \score {
    \form_layout
    <<
      \numericTimeSignature
      \changes_nine
      \new Staff \with {
        instrumentName = \markup \box \bold "I"
      } {
        \structure_five
      }
    >>
  }

  \score {
    \form_layout
    <<
      \numericTimeSignature
      \changes_ten
      \new Staff \with {
        instrumentName = \markup \box \bold "J"
      } {
        \structure_one
      }
    >>
  }

  \score {
    \form_layout
    <<
      \numericTimeSignature
      \changes_eleven
      \new Staff \with {
        instrumentName = \markup \box \bold "K"
      } {
        \structure_one
      }
    >>
  }

  \markup \vspace #2

  \markup \fill-line {
    \column
    \override #'(padding . 5)
    \table #'(1 -1 -1)
    {
      \bold Verse \italic "" ""
      \bold Chorus \italic "" ""
    }
  }
}
