\version "2.25.22"

\include "helpers/settings.ily"

\include "scores/bach/invention-6/invention-6-global.ily"
\include "scores/bach/invention-6/invention-6-voice-one.ily"

\score {
	\new Staff \with {
		instrumentName = "Guitar"
	} {
		\global
		\inventionSixVoiceOne
	}
}
