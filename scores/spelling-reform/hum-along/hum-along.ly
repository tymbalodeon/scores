\version "2.25.17"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
    title = "Hum Along"
    subtitle = "Spelling Reform"
    composer = "Dan Wisniewski"
}

music = \relative a {
    \key a \major
    \time 4/4

    \partial 2

    <<
        \new CueVoice {
            | r8 <a d a'>4 -> <g d' fs>8 -> \laissezVibrer
        }

        s2
    >>

    \repeat volta 2 {
        \sectionLabel Instrumental

        | R1 * 8

        \sectionLabel Verse

        | R1 * 8 
    }

    | fs'4. e8 ~ e2
    | d8 cs b a ~ a2 ~
    | a1 ~
    | a1

    | r2. r8 fs' ~
    | fs8 gs4 a8 ~ a cs4 e8 ~
    | e1 ~
    | e1

}

\score {
    \new Staff \with {
        instrumentName = "Guitar"
        \numericTimeSignature
    } {
        \compressMMRests
        \music
    }
}
