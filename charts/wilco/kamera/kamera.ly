\version "2.23.80"

\include "settings.ily"
\include "style.ily"
\include "kamera-melody.ily"
\include "kamera-chords.ily"
\include "kamera-structure.ily"

\header {
  title = "Kamera"
  composer = "Wilco"
}

\paper {
  score-system-spacing.basic-distance = #18
}

\layout {
  indent = #0
  ragged-last = ##f
  \context {
    \Score
    \consists #(set-bars-per-line '(4))
  }
}

\score {
  <<
    \numericTimeSignature
    \changes_vamp
    \structure_vamp
  >>
}

\score {
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
  <<
    \numericTimeSignature
    \changes_outro
    \structure_outro
  >>
}

\markup \fill-line {
  \column
  \override #'(padding . 5)
  \table #'(1 -1 -1)
  {
    \bold Vamp \italic "x 4" ""
    \bold Verse \italic "x 2" ""
    \bold Vamp \italic "x 4" ""
    \bold Verse \italic "x 1" "instrumental until m. 9"
    \bold Vamp \italic "x 4" ""
    \bold Outro \italic "x 1" ""
  }
}
