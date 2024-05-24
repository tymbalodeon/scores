\version "2.25.15"

\include "helpers/settings.ily"

\include "scores/bach/invention-6/invention-6-global.ily"
\include "scores/bach/invention-6/invention-6-voice-one.ily"
\include "scores/bach/invention-6/invention-6-voice-two.ily"

\include "scores/bach/invention-6/invention-6-guitar-bass/invention-6-bass.ily"

\score {
	\new Staff \with {
		instrumentName = "Bass"
	} {
		\global
		\bassWithFingerings
	}
}
