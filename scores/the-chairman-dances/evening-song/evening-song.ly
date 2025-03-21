\version "2.25.24"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "scores/the-chairman-dances/adventurous/adventurous-bass.ily"
\include "scores/the-chairman-dances/be-thou-my-vision/be-thou-my-vision-bass.ily"
\include "scores/the-chairman-dances/faded-and-fraying/faded-and-fraying-bass.ily"
\include "scores/the-chairman-dances/i-was-struck-by-the-words/i-was-struck-by-the-words-bass.ily"
\include "scores/the-chairman-dances/i-hadnt-tried/i-hadnt-tried-bass.ily"
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
    instrument = "Bass"
    composer = "Eric Krewson"
    arranger = "Ben Rosen, bass"
}

\paper {
    tocItemMarkup = \tocItemWithDotsMarkup
}

\markuplist \table-of-contents
\pageBreak

\tocItem \markup "Turn on the Lights, the Radio"

\score {
    \header {
        piece = "Turn on the Lights, the Radio"
    }

    \new Staff \with {
        instrumentName = \markup \tiny "Double Bass"
    } \compressMMRests {
        \numericTimeSignature
        \turnOnTheLightsTheRadioBass
    }
}

\tocItem \markup "Faded & Fraying"

\score {
    \header {
        piece = "Faded & Fraying"
    }

    \compressMMRests {
        \numericTimeSignature
        \fadedAndFrayingBass
    }
}

\tocItem \markup "We Rifled Through"

\score {
    \header {
        piece = "We Rifled Through"
    }

    \compressMMRests {
        \numericTimeSignature
        \weRifledThroughBass
    }
}

\tocItem \markup "Struck By The Words"

\score {
    \header {
        piece = "Struck By The Words"
    }

    \compressMMRests {
        \numericTimeSignature
        \iWasStruckByTheWordsBass
    }
}

\tocItem \markup "Adventurous"

\score {
    \header {
        piece = "Adventurous"
    }

    \compressMMRests {
        \numericTimeSignature
        \adventurousBass
    }
}

\tocItem \markup "Least of These"

\score {
    \header {
        piece = "Least of These"
    }

    \compressMMRests {
        \numericTimeSignature
        \leastOfTheseBass
    }
}

\tocItem \markup "Where / When"

\score {
    \header {
        piece = "Where / When"
    }

    \compressMMRests {
        \numericTimeSignature
        \whereWhenBass
    }
}

\tocItem \markup "Nocturne"

\tocItem \markup "Listening"

\score {
    \header {
        piece = "Listening"
    }

    \compressMMRests {
        \numericTimeSignature
        \listeningBass
    }
}

\tocItem \markup "Silver in the Sun"

\score {
    \header {
        piece = "Silver in the Sun"
    }

    \compressMMRests {
        \numericTimeSignature
        \silverInTheSunBass
    }
}


\tocItem \markup "She Leans, They Kiss"

\score {
    \header {
        piece = "She Leans, They Kiss"
    }

    \compressMMRests {
        \numericTimeSignature
        \sheLeansTheyKissBass
    }
}

\tocItem \markup "Hadn't Tried"

\score {
    \header {
        piece = "Hadn't Tried"
    }

    \compressMMRests {
        \numericTimeSignature
        \hadntTriedBass
    }
}

\score {
    \compressMMRests {
        \numericTimeSignature
        \hadntTriedBassCoda
    }
}
