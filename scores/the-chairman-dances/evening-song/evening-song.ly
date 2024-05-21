\version "2.25.15"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "scores/the-chairman-dances/adventurous/adventurous-bass.ily"
\include "scores/the-chairman-dances/be-thou-my-vision/be-thou-my-vision-bass.ily"
\include "scores/the-chairman-dances/faded-and-fraying/faded-and-fraying-bass.ily"

\header {
    title = "Evening Song"
    subtitle = "The Chairman Dances"
    composer = "Eric Krewson"
    arranger = "Ben Rosen, bass"
}

\score {
    \header {
        piece = "Adventurous"        
    }

    \new Staff \with {
        instrumentName = "Bass"
        \numericTimeSignature
    } {
        \compressMMRests
        \adventurous
    }
}

\score {
    \header {
        piece = "Be Thou My Vision"        
    }

    \new Staff \with {
        instrumentName = "Bass"
        \numericTimeSignature
    } {
        \compressMMRests
        \beThouMyVision
    }
}

\score {
    \header {
        piece = "Faded and Fraying"        
    }

    \new Staff \with {
        instrumentName = "Bass"
        \numericTimeSignature
    } {
        \compressMMRests
        \fadedAndFraying
    }
}
