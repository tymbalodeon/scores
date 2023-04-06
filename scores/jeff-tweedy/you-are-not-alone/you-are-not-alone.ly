\version "2.25.3"

\include "settings.ily"
\include "helpers/set-bars-per-line.ily"
\include "you-are-not-alone-melody.ily"
\include "you-are-not-alone-chords.ily"
\include "you-are-not-alone-structure.ily"

\header {
  title = "You Are Not Alone"
  subtitle = "Jeff Tweedy"
}

\paper {
  score-system-spacing.basic-distance = #18
}

\layout {
  ragged-last = ##f
}

\markup \vspace #1

\score {
  <<
    \numericTimeSignature
    \changes_intro
    \new Staff \with {
      instrumentName = \markup \box "Intro"
    } {
      <<
        \melody_intro
        \structure_intro
      >>
    }
  >>
}

\score {
  \layout {
    \context {
      \Score
      \consists #(set-bars-per-line '(4 5 4 4))
    }
  }
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
  <<
    \numericTimeSignature
    \changes_end
    \new Staff \with {
      instrumentName = \markup \box "End"
    } {
      <<
        \melody_end
        \structure_end
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
    \bold Verse \italic "x 3" "3rd time: guitar solo mm. 1-9; coda to End"
    \bold End \italic "" ""
  }
}
