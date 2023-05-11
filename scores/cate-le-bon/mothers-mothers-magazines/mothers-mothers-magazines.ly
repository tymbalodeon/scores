\version "2.25.4"

\include "settings.ily"
\include "helpers/set-bars-per-line.ily"
\include "mothers-mothers-magazines-chords.ily"
\include "mothers-mothers-magazines-melody.ily"
\include "mothers-mothers-magazines-structure.ily"

\header {
  title = "Mother's Mother's Magazines"
  subtitle = "Cate Le Bon"
}

\paper {
  score-system-spacing.basic-distance = #20
}

\layout {
  ragged-last = ##f
  \context {
    \Score
    \consists #(set-bars-per-line '(4))
  }
}


\markup \vspace #1

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
  <<
    \numericTimeSignature
    \changes_solo
    \new Staff \with {
      instrumentName = \markup \box "Solo"
    } {
      <<
        \melody_solo
        \structure_solo
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
    \bold Verse \italic "x 6" "2 instrumental, then 4 with vocals"
    \bold Chorus \italic "" "1 repeat"
    \bold Verse \italic "x 6" "2 instrumental, then 4 with vocals"
    \bold Chorus \italic "" "2 repeats, D.S. al Solo"
    \bold Solo \italic "x ?" "instrumental"
    \bold Verse \italic "x 2" "instrumental"
  }
}
