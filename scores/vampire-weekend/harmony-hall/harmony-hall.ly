\version "2.25.6"

\include "helpers/settings.ily"
\include "helpers/set-bars-per-line.ily"
\include "harmony-hall-melody.ily"
\include "harmony-hall-changes.ily"
\include "harmony-hall-structure.ily"

\paper {
  score-system-spacing.basic-distance = #18
}

\header {
  title = "Harmony Hall"
  subtitle = "Vampire Weekend"
}

\layout {
  ragged-last = ##f
  \context {
    \Score \consists
    #(set-bars-per-line '(4))
  }
}

\markup \vspace #1

\score {
  <<
    \numericTimeSignature
    \changes_riff
    \new Staff \with {
      instrumentName = \markup \box "Riff/Verse"
    } {
      <<
        \melody_riff
        \structure_riff
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
        \structure_chorus
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
    \bold "Riff" ""
    \bold "Verse" ""
    \bold "Pre-Chorus" ""
    \bold "Chorus" ""
    \bold "Riff" "first 2 measures only"
    \bold "Verse" ""
    \bold "Pre-Chorus" ""
    \bold "Chorus" ""
    \bold "Chorus" "Piano solo (no repeat)"
    \bold "Pre-Chorus" "no rhythm"
    \bold "Chorus" "1st repeat instrumental"
    \bold "Chorus" "no repeat"
    \bold "Riff" ""
  }
}
