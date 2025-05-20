\version "2.25.24"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "scores/thee-sacred-souls/will-i-see-you-again/will-i-see-you-again-bass.ily"

\header {
  title = "Will I See You Again?"
  subtitle = "Thee Sacred Souls"
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
    \numericTimeSignature
  } {
    \compressMMRests
    \transpose c a, \willISeeYouAgain
  }
}
