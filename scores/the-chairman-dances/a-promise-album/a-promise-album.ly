\version "2.25.19"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\include "scores/the-chairman-dances/natalie/natalie-bass.ily"
\include "scores/the-chairman-dances/a-promise/a-promise-bass.ily"
\include "scores/the-chairman-dances/a-voice-in-the-night/a-voice-in-the-night-bass.ily"
\include "scores/the-chairman-dances/a-family-waiting/a-family-waiting-bass.ily"
\include "scores/the-chairman-dances/thought-id-lost-you/thought-id-lost-you-bass.ily"
\include "scores/the-chairman-dances/penitent/penitent-bass.ily"
\include "scores/the-chairman-dances/housekeeping/housekeeping-bass.ily"
\include "scores/the-chairman-dances/sarah/sarah-bass.ily"
\include "scores/the-chairman-dances/interstate/interstate-bass.ily"
\include "scores/the-chairman-dances/nowhere-to-be/nowhere-to-be-bass.ily"

\header {
    title = "A Promise"
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

\tocItem \markup "Natalie [Natalie's Husband as Suitor]"

\score {
    \header {
        piece = "Natalie [Natalie's Husband as Suitor]"
    }

    \compressMMRests
    \natalieBass
}

\tocItem \markup "A Promise [Natalie's Husband as Suitor]"

\score {
    \header {
        piece = "A Promise [Natalie's Husband as Suitor]"
    }

    \compressMMRests
    \aPromiseBass
}

\tocItem \markup "A Voice in the Night [Natalie's Husband]"

\score {
    \header {
        piece = "A Voice in the Night [Natalie's Husband]"
    }

    \compressMMRests
    \aVoiceInTheNightBass
}

\tocItem \markup "A Family Waiting [Natalie's Husband]"

\score {
    \header {
        piece = "A Family Waiting [Natalie's Husband]"
    }

    \compressMMRests
    \aFamilyWaitingBass
}

\tocItem \markup "Thought I'd Lost You [Natalie]"

\score {
    \header {
        piece = "Thought I'd Lost You [Natalie]"
    }

    \compressMMRests
    \thoughtIdLostYouBass
}

\tocItem \markup "Penitent [Sarah's Husband - Bedside]"

\score {
    \header {
        piece = "Penitent [Sarah's Husband - Bedside]"
    }

    \compressMMRests
    \penitentBass
}

\tocItem \markup "Housekeeping [Sarah's Husband - Bedside]"

\score {
    \header {
        piece = "Housekeeping [Sarah's Husband - Bedside]"
    }

    \compressMMRests
    \housekeepingBass
}

\tocItem \markup "Sarah [Sarah's Husband]"

\score {
    \header {
        piece = "Sarah [Sarah's Husband]"
    }

    \compressMMRests
    \sarahBass
}

\tocItem \markup "Interstate [Sarah]"

\score {
    \header {
        piece = "Interstate [Sarah]"
    }

    \compressMMRests
    \interstateBass
}

\tocItem \markup "Nowhere to Be [Sarah's Husband]"

\score {
    \header {
        piece = "Nowhere to Be [Sarah's Husband]"
    }

    \compressMMRests
    \nowhereToBeBass
}
