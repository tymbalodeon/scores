\version "2.25.3"

\include "settings.ily"
\include "helpers/set-bars-per-line.ily"
\include "pony-st-melody.ily"
\include "pony-st-chords.ily"
\include "pony-st-structure.ily"

\header {
  title = "Pony St"
  subtitle = "Elvis Costello"
}

\layout {
  ragged-last = ##f
  \context {
    \Score
    \consists #(set-bars-per-line '(4))
  }
}

\paper {
  score-system-spacing.basic-distance = #18
}

\markup \vspace #1

\score {
  <<
    \numericTimeSignature
    \changes_vamp
    \new Staff \with {
      instrumentName = \markup \box "Vamp"
    } {
      <<
        \structure_vamp
      >>
    }
  >>
}

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
    \changes_pre_chorus
    \new Staff \with {
      instrumentName = \markup \box "Pre-Chorus"
    } {
      <<
        \melody_pre_chorus
        \structure_pre_chorus
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
    \changes_coda
    \new Staff \with {
      instrumentName = \markup \box "Coda"
    } {
      <<
        \structure_coda
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
    \bold Vamp \italic "x 5" ""
    \bold Intro \italic "" ""
    \bold Verse \italic "" "extra meausre of Em"
    \bold Pre-Chorus \italic "" ""
    \bold Chorus \italic "" ""
    \bold Verse \italic "" "no extra measure"
    \bold Pre-Chorus \italic "" ""
    \bold Chorus \italic "" ""
    \bold Coda \italic "" ""
    \bold Vamp \italic "x ?" ""
  }
}
