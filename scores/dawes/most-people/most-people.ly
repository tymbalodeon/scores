\version "2.25.22"

\include "helpers/settings.ily"
\include "helpers/set-bars-per-line.ily"
\include "most-people-chords.ily"
\include "most-people-melody.ily"
\include "most-people-structure.ily"

\header {
  title = "Most People"
  subtitle = "Dawes"
}

\layout {
  \context {
    \Score \consists #(set-bars-per-line '(4))
  }
}

form_layout = \layout {
  ragged-last = ##f
}

\paper {
  score-system-spacing.basic-distance = #18
}

\markup \vspace #1

\score {
  \form_layout
  <<
    \numericTimeSignature
    \changes_verse
    \new Staff \with {
      instrumentName = \markup \box "Verse"
    } {
      <<
        \verse_chorus
        \structure_verse
      >>
    }
  >>
}

\score {
  \form_layout
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
  \form_layout
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
  \table #'(1 -1)
  {
    \bold "Chorus" "instrumental (no Coda)"
    \bold "Verse" ""
    \bold "Chorus" "(no Coda)"
    \bold "Verse" ""
    \bold "Chorus" "4th time, use 1st ending, then Coda to End"
    \bold "End" ""
  }
}
