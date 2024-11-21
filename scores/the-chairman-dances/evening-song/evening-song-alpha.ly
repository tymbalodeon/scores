\version "2.25.20"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "scores/the-chairman-dances/acme-parking-garage/acme-parking-garage.ly"
\include "scores/the-chairman-dances/adventurous/adventurous-bass.ily"
\include "scores/the-chairman-dances/faded-and-fraying/faded-and-fraying-bass.ily"
\include "scores/the-chairman-dances/i-was-struck-by-the-words/i-was-struck-by-the-words-bass.ily"
\include "scores/the-chairman-dances/i-hadnt-tried/i-hadnt-tried-bass.ily"
\include "scores/the-chairman-dances/she-leans-they-kiss/she-leans-they-kiss-bass.ily"
\include "scores/the-chairman-dances/silver-in-the-sun/silver-in-the-sun-bass.ily"
\include "scores/the-chairman-dances/we-rifled-through/we-rifled-through-bass.ily"
\include "scores/the-chairman-dances/where-when/where-when-bass.ily"
\include "scores/the-chairman-dances/dance-to-the-neighbors-stereo/dance-to-the-neighbors-stereo.ly"

\header {
    title = "Evening Song Release Show"
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

\pageBreak

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

\pageBreak

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

\pageBreak

\markup \fill-line {
  \column
  \override #'(padding . 5)
  \table #'(1 -1 -1) {
    "" "This page intentionally left blank" ""
  }
}

\pageBreak

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

\pageBreak

\tocItem \markup "Acme Parking Garage"

\score {
    \header {
        piece = "Acme Parking Garage"
    }

    \compressMMRests {
        \numericTimeSignature
        \acmeParkingGarageBass
    }
}

\pageBreak

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

\pageBreak

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

\pageBreak

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

\tocItem \markup "Dance to the Neighbor's Stereo"

\score {
    \header {
        piece = "Dance to the Neighbor's Stereo"
    }

    \compressMMRests {
        \numericTimeSignature
        \danceToTheNeighborsStereoBass
    }
}
