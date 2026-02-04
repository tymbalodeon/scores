\version "2.25.32"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "scores/tomo-choco/lobby/lobby-bass.ily"

\header {
  title = "Lobby"
  composer = "Ashley Cubbler"
  arranger = "Ben Rosen, bass"
}

\score {
   #(set-global-staff-size 18)

    \new Staff \with {
        instrumentName = "Bass"
        \numericTimeSignature
    } {
        \compressMMRests
        \lobbyBass
    }
}
