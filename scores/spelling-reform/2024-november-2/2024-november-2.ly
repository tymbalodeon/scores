\version "2.25.19"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "scores/spelling-reform/i-am-your-hypocrite/i-am-your-hypocrite-guitar.ily"
\include "scores/spelling-reform/hum-along/hum-along-guitar.ily"
\include "scores/spelling-reform/the-grieving-game/the-grieving-game-guitar.ily"

\header {
    title = "November 2, 2024"
    subtitle = "Spelling Reform"
    instrument = "Guitar"
}

\markup \vspace #2

\paper {
    tocItemMarkup = \tocItemWithDotsMarkup
}

\markuplist \table-of-contents
\pageBreak

\tocItem \markup "I Am Your Hypocrite"

\score {
    \header {
        piece = "I Am Your Hypocrite"
    }

    \compressMMRests
    \IAmYourHypocrite
}

\tocItem \markup "Hum Along"

\score {
    \header {
        piece = "Hum Along"
    }

    \compressMMRests
    \humAlong
}

\tocItem \markup "The Grieving Game"

\score {
    \header {
        piece = "The Grieving Game"
    }

    \compressMMRests
    \theGrievingGame
}

