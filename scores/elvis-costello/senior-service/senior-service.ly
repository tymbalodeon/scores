\version "2.25.26"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "scores/elvis-costello/senior-service/senior-service-bass.ily"

\header {
  title = "Senior Service"
  composer = "Elvis Costello"
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
    \numericTimeSignature
  } {
    \compressMMRests
    \transpose f a \seniorServiceBass
  }
}
