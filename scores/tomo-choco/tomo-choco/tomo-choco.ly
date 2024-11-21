\version "2.25.20"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "scores/tomo-choco/awake/awake-bass.ily"
\include "scores/tomo-choco/ciggy/ciggy-bass.ily"
\include "scores/tomo-choco/echos/echos-bass.ily"
\include "scores/tomo-choco/lobby/lobby-bass.ily"
\include "scores/tomo-choco/mattress/mattress-bass.ily"
\include "scores/tomo-choco/scroll/scroll-bass.ily"
\include "scores/tomo-choco/small-rooms/small-rooms-bass.ily"
\include "scores/tomo-choco/sweaty/sweaty-bass.ily"
\include "scores/tomo-choco/zippers/zippers-bass.ily"

\header {
    title = "Tomo Choco"
    subtitle = "Tomo Choco"
    instrument = "Bass"
    composer = "Ashley Cubbler"
    arranger = "Ben Rosen, bass"
}

\paper {
    tocItemMarkup = \tocItemWithDotsMarkup
}

\layout {
    \numericTimeSignature
}

\markuplist \table-of-contents

\pageBreak

\tocItem \markup "Awake"

\score {
    \header {
        piece = "Awake"
    }

    \compressMMRests
    \awakeBass
}

\pageBreak

\tocItem \markup "Ciggy"

\score {
    \header {
        piece = "Ciggy"
    }

    \compressMMRests
    \ciggyBass
}

\tocItem \markup "Echos"

\score {
    \header {
        piece = "Echos"
    }

    \compressMMRests
    \echosBass
}

\tocItem \markup "Lobby"

\score {
    \header {
        piece = "Lobby"
    }

    \compressMMRests
    \lobbyBass
}

\pageBreak

\tocItem \markup "Mattress"

\score {
    \header {
        piece = "Mattress"
    }

    \compressMMRests
    \mattressBass
}

\tocItem \markup "Scroll"

\score {
    \header {
        piece = "Scroll"
    }

    \compressMMRests
    \scrollBass
}

\tocItem \markup "Small Rooms"

\score {
    \header {
        piece = "Small Rooms"
    }

    \compressMMRests
    \smallRoomsBass
}

\pageBreak

\tocItem \markup "Sweaty"

\score {
    \header {
        piece = "Sweaty"
    }

    \compressMMRests
    \sweatyBass
}

\tocItem \markup "Zippers"

\score {
    \header {
        piece = "Zippers"
    }

    \compressMMRests
    \zippersBass
}
