\version "2.25.19"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "scores/spelling-reform/i-am-your-hypocrite/i-am-your-hypocrite-guitar.ily"
\include "scores/spelling-reform/hum-along/hum-along-guitar.ily"
\include "scores/spelling-reform/the-grieving-game/the-grieving-game-guitar.ily"
\include "scores/spelling-reform/circles/circles-guitar.ily"
\include "scores/spelling-reform/the-organs-of-enlightenment/the-organs-of-enlightenment-guitar.ily"
\include "scores/spelling-reform/there-is-no-more-future/there-is-no-more-future-guitar.ily"
\include "scores/spelling-reform/meet-me-in-the-atmosphere/meet-me-in-the-atmosphere-guitar.ily"
\include "scores/spelling-reform/microscope/microscope-guitar.ily"
\include "scores/the-quelle-source/the-painters/the-painters-guitar.ily"
\include "scores/spelling-reform/together-apart/together-apart-guitar.ily"
\include "scores/spelling-reform/the-real-giving-up/the-real-giving-up-guitar.ily"
\include "scores/spelling-reform/fake-conversations/fake-conversations-guitar.ily"

\header {
    title = "November 2, 2024"
    subtitle = "Spelling Reform"
    composer = "Dan Wisniewski"
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

    \compressMMRests {
        \numericTimeSignature
        \iAmYourHypocrite
    }
}

\tocItem \markup "Hum Along"

\score {
    \header {
        piece = "Hum Along"
    }

    \compressMMRests {
        \numericTimeSignature
        \humAlong
    }
}

\tocItem \markup "The Grieving Game"

\score {
    \header {
        piece = "The Grieving Game"
    }

    \compressMMRests {
        \numericTimeSignature
        \theGrievingGame
    }
}

\tocItem \markup "Circles"

\score {
    \header {
        piece = "Circles"
    }

    \compressMMRests {
        \numericTimeSignature
        \circles
    }
}

\tocItem \markup "The Organs of Enlightenment"

\score {
    \header {
        piece = "The Organs of Enlightenment"
    }

    \compressMMRests {
        \numericTimeSignature
        \theOrgansOfEnlightenment
    }
}

\pageBreak

\tocItem \markup "There Is No More Future"

\score {
    \header {
        piece = "There Is No More Future"
    }

    \compressMMRests {
        \numericTimeSignature
        \thereIsNoMoreFuture
    }
}

\tocItem \markup "Meet Me in the Atmosphere"

\score {
    \header {
        piece = "Meet Me in the Atmosphere"
    }

    \compressMMRests {
        \numericTimeSignature
        \meetMeInTheAtmosphere
    }
}

\tocItem \markup "Microscope"

\score {
    \header {
        piece = "Microscope"
        opus = "Andrew Ciampa, guitar"
    }

    \compressMMRests {
        \numericTimeSignature
        \removeWithTag #'album
        \microscope
    }
}

\tocItem \markup "The Painters"

\score {
    \header {
        piece = "The Painters"
    }

    \new Staff \with {
          instrumentName = \markup {
            \center-column {
              \tiny \line { "Capo III"  }
            }
        }
    } {
        \numericTimeSignature
        \compressMMRests
        \thePainters
    }
}

\tocItem \markup "Together Apart"

\score {
    \header {
        piece = "Together Apart"
        opus = "Andrew Ciampa, guitar"
    }

    \compressMMRests {
        \numericTimeSignature
        \togetherApart
    }
}

\tocItem \markup "The Real Giving Up"

\score {
    \header {
        piece = "The Real Giving Up"
    }

    \compressMMRests {
        \numericTimeSignature
        \theRealGivingUp
    }
}

\tocItem \markup "Fake Conversations"

\score {
    \header {
        piece = "Fake Conversations"
        opus = "Andrew Ciampa, guitar"
    }

    \compressMMRests {
        \numericTimeSignature
        \fakeConversations
    }
}
