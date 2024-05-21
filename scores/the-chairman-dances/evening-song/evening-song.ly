\version "2.25.15"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "scores/the-chairman-dances/adventurous/adventurous-bass.ily"
\include "scores/the-chairman-dances/be-thou-my-vision/be-thou-my-vision-bass.ily"
\include "scores/the-chairman-dances/faded-and-fraying/faded-and-fraying-bass.ily"
\include "scores/the-chairman-dances/i-was-struck-by-the-words/i-was-struck-by-the-words-bass.ily"
\include "scores/the-chairman-dances/least-of-these/least-of-these-bass.ily"
\include "scores/the-chairman-dances/listening/listening-bass.ily"
\include "scores/the-chairman-dances/she-leans-they-kiss/she-leans-they-kiss-bass.ily"
\include "scores/the-chairman-dances/silver-in-the-sun/silver-in-the-sun-bass.ily"
\include "scores/the-chairman-dances/turn-on-the-lights-the-radio/turn-on-the-lights-the-radio-bass.ily"
\include "scores/the-chairman-dances/we-rifled-through/we-rifled-through-bass.ily"
\include "scores/the-chairman-dances/where-when/where-when-bass.ily"

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
        \adventurousBass
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
        \beThouMyVisionBass
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
        \fadedAndFrayingBass
    }
}

\pageBreak

\score {
    \header {
        piece = "I Was Struck By The Words"
    }

    \new Staff \with {
        instrumentName = "Bass"
        \numericTimeSignature
    } {
        \compressMMRests
        \iWasStruckByTheWordsBass
    }
}

\score {
    \header {
        piece = "Least of These"
    }

    \new Staff \with {
        instrumentName = "Bass"
        \numericTimeSignature
    } {
        \compressMMRests
        \leastOfTheseBass
    }
}

\score {
    \header {
        piece = "Listening"
    }

    \new Staff \with {
        instrumentName = "Bass"
        \numericTimeSignature
    } {
        \compressMMRests
        \listeningBass
    }
}

\score {
    \header {
        piece = "She Leans, They Kiss"
    }

    \new Staff \with {
        instrumentName = "Bass"
        \numericTimeSignature
    } {
        \compressMMRests
        \sheLeansTheyKissBass
    }
}

\score {
    \header {
        piece = "Silver in the Sun"
    }

    \new Staff \with {
        instrumentName = "Bass"
        \numericTimeSignature
    } {
        \compressMMRests
        \silverInTheSunBass
    }
}

\score {
    \header {
        piece = "Turn on the Lights, the Radio"
    }

    \new Staff \with {
        instrumentName = "Bass"
        \numericTimeSignature
    } {
        \compressMMRests
        \turnOnTheLightsTheRadioBass
    }
}

\score {
    \header {
        piece = "We Rifled Through"
    }

    \new Staff \with {
        instrumentName = "Bass"
        \numericTimeSignature
    } {
        \compressMMRests
        \weRifledThroughBass
    }
}

\score {
    \header {
        piece = "Where/When"
    }

    \new Staff \with {
        instrumentName = "Bass"
        \numericTimeSignature
    } {
        \compressMMRests
        \whereWhenBass
    }
}
