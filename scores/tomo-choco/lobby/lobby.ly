\version "2.25.19"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "scores/tomo-choco/lobby/lobby-bass.ily"

\header {
  title = "Lobby"
  composer = "Ashley Cubbler"
  arranger = "Ben Rosen, bass"
}

\score {
    \new Staff \with {
        instrumentName = "Bass"
        \numericTimeSignature
    } {
        \compressMMRests
        \lobbyBass
    }
}
