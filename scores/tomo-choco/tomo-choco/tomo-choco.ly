\version "2.25.15"

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
    composer = "Ashley Cubbler"
    arranger = "Ben Rosen, bass"
}

\score {
    \header {
        piece = "Awake"        
    }

    \new Staff \with {
        instrumentName = "Bass"
        \numericTimeSignature
    } {
        \compressMMRests
        \awakeBass
    }
}

\score {
    \header {
        piece = "Ciggy"        
    }

    \new Staff \with {
        instrumentName = "Bass"
        \numericTimeSignature
    } {
        \compressMMRests
        \ciggyBass
    }
}

\score {
    \header {
        piece = "Echos"        
    }

    \new Staff \with {
        instrumentName = "Bass"
        \numericTimeSignature
    } {
        \compressMMRests
        \echosBass
    }
}

\score {
    \header {
        piece = "Lobby"        
    }

    \new Staff \with {
        instrumentName = "Bass"
        \numericTimeSignature
    } {
        \compressMMRests
        \lobbyBass
    }
}

\score {
    \header {
        piece = "Mattress"        
    }

    \new Staff \with {
        instrumentName = "Bass"
        \numericTimeSignature
    } {
        \compressMMRests
        \mattressBass
    }
}

\score {
    \header {
        piece = "Scroll"        
    }

    \new Staff \with {
        instrumentName = "Bass"
        \numericTimeSignature
    } {
        \compressMMRests
        \scrollBass
    }
}

\score {
    \header {
        piece = "Small Rooms"        
    }

    \new Staff \with {
        instrumentName = "Bass"
        \numericTimeSignature
    } {
        \compressMMRests
        \smallRoomsBass
    }
}

\score {
    \header {
        piece = "Sweaty"        
    }

    \new Staff \with {
        instrumentName = "Bass"
        \numericTimeSignature
    } {
        \compressMMRests
        \sweatyBass
    }
}

\score {
    \header {
        piece = "Zippers"        
    }

    \new Staff \with {
        instrumentName = "Bass"
        \numericTimeSignature
    } {
        \compressMMRests
        \zippersBass
    }
}
