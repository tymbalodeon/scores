\version "2.25.19"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "scores/spelling-reform/i-am-your-hypocrite/i-am-your-hypocrite-guitar.ily"
\include "scores/spelling-reform/hum-along/hum-along-guitar.ily"
\include "scores/spelling-reform/the-grieving-game/the-grieving-game-guitar.ily"
\include "scores/spelling-reform/circles/circles-guitar.ily"
\include "scores/spelling-reform/the-organs-of-enlightenment/the-organs-of-enlightenment-guitar.ily"
\include "scores/spelling-reform/meet-me-in-the-atmosphere/meet-me-in-the-atmosphere-guitar.ily"
\include "scores/spelling-reform/microscope/microscope-guitar.ily"
\include "scores/spelling-reform/together-apart/together-apart-guitar.ily"
\include "scores/spelling-reform/the-real-giving-up/the-real-giving-up-guitar.ily"
\include "scores/spelling-reform/fake-conversations/fake-conversations-guitar.ily"

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
    \iAmYourHypocrite
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

\tocItem \markup "Circles"

\score {
    \header {
        piece = "Circles"
    }

    \compressMMRests
    \circles
}

\tocItem \markup "The Organs of Enlightenment"

\score {
    \header {
        piece = "The Organs of Enlightenment"
    }

    \compressMMRests
    \theOrgansOfEnlightenment
}

\tocItem \markup "Meet Me in the Atmosphere"

\score {
    \header {
        piece = "Meet Me in the Atmosphere"
    }

    \compressMMRests
    \meetMeInTheAtmosphere
}

\tocItem \markup "Microscope"

\score {
    \header {
        piece = "Microscope"
    }

    \compressMMRests
    \microscope
}

\tocItem \markup "Together Apart"

\score {
    \header {
        piece = "Together Apart"
    }

    \compressMMRests
    \togetherApart
}

\tocItem \markup "The Real Giving Up"

\score {
    \header {
        piece = "The Real Giving Up"
    }

    \compressMMRests
    \theRealGivingUp
}

\tocItem \markup "Fake Conversations"

\score {
    \header {
        piece = "Fake Conversations"
    }

    \compressMMRests
    \fakeConversations
}
