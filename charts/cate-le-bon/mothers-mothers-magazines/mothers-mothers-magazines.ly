\version "2.23.80"

\include "settings.ily"
\include "style.ily"
\include "mothers-mothers-magazines-chords.ily"
\include "mothers-mothers-magazines-melody.ily"
\include "mothers-mothers-magazines-structure.ily"

\header {
  title = "Mother's Mother's Magazines"
  composer = "Cate Le Bon"
}

\paper {
  score-system-spacing.basic-distance = #20
}

\layout {
  indent = #0
  ragged-last = ##f
  \context {
    \Score
    \consists #(set-bars-per-line '(4))
  }
}

melody_verse = \new Staff <<
  \melody_verse
  \structure_verse
>>

melody_chorus = \new Staff <<
  \melody_chorus
  \structure_chorus
>>

melody_solo = \new Staff <<
  \melody_solo
  \structure_solo
>>

\score {
  <<
    \numericTimeSignature
    \changes_verse
    \melody_verse
  >>
}

\score {
  <<
    \numericTimeSignature
    \changes_chorus
    \melody_chorus
  >>
}

\score {
  <<
    \numericTimeSignature
    \changes_solo
    \melody_solo
  >>
}

\markup \fill-line {
  \column
  \override #'(padding . 5)
  \table #'(1 -1 -1)
  {
    \bold Verse \italic "x 6" "2 instrumental, then 4 with vocals"
    \bold Chorus \italic "x 1" "do the repeat once"
    \bold Verse \italic "x 6" "2 instrumental, then 4 with vocals"
    \bold Chorus \italic "x 1" "do the repeat twice, D.S. al Solo"
    \bold Solo \italic "x ?" "instrumental"
    \bold Verse \italic "x 2" "instrumental"
  }
}
