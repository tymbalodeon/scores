\version "2.25.26"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "scores/tomo-choco/ciggy/ciggy-bass.ily"

\header {
  title = "Ciggy"
  composer = "Ashley Cubbler"
  arranger = "Ben Rosen, bass"
}

\score {
  #(set-global-staff-size 19)

    \new Staff \with {
        instrumentName = "Bass"
        \numericTimeSignature
    } {
        \compressMMRests
        \ciggyBass
    }
}
