\version "2.23.80"

\include "settings.ily"
\include "style.ily"
\include "you-are-not-alone-melody.ily"
\include "you-are-not-alone-chords.ily"
\include "you-are-not-alone-structure.ily"

\header {
  title = "You Are Not Alone"
  composer = "Jeff Tweedy"
}

\paper {
  score-system-spacing.basic-distance = #18
}

\layout {
  indent = #0
  ragged-last = ##f
}

\score {
  <<
    \numericTimeSignature
    \changes_intro
    \new Staff {
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
    \new Staff {
      <<
        \melody_verse
        \structure_verse
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
    \changes_end
    \new Staff {
      <<
        \melody_end
        \structure_end
      >>
    }
  >>
}

\markup \fill-line {
  \column
  \override #'(padding . 5)
  \table #'(1 -1 -1)
  {
    \bold Intro \italic "x 1" ""
    \bold Verse \italic "x 3" "3rd time: guitar solo mm. 1-9; coda to End"
    \bold End \italic "x 1" ""
  }
}
