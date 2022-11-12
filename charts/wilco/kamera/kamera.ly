\version "2.23.80"

\include "settings.ily"
\include "style.ily"
\include "kamera-melody.ily"
\include "kamera-chords.ily"
\include "kamera-structure.ily"

\header {
  title = "Kamera"
  subtitle = "Wilco"
}

\paper {
  score-system-spacing.basic-distance = #18
}

\layout {
  ragged-last = ##f
  \context {
    \Score
    \consists #(set-bars-per-line '(4))
  }
}

\markup \vspace #2

\score {
  <<
    \numericTimeSignature
    \changes_vamp
    \new Staff \with {
      instrumentName = \markup \box "Vamp"
    } {
      \structure_vamp
    }
  >>
}

\score {
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

\markup \vspace #4

\markup \fill-line {
  \column
  \override #'(padding . 5)
  \table #'(1 -1 -1)
  {
    \bold Vamp \italic "x 4" ""
    \bold Verse \italic "x 2" ""
    \bold Vamp \italic "x 4" ""
    \bold Verse \italic "" "instrumental until m. 9"
    \bold Vamp \italic "x ?" "add major 7"
    \bold End \italic "" ""
  }
}
