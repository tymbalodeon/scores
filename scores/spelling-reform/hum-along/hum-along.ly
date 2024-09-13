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
            r8 <a d a'>4 -> <g d' fs>8 -> \laissezVibrer
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
    | R1 * 6

    | e,16 ( fs ) cs'8 ~ cs e,16 ( fs ) a4 e16 ( fs ) cs'8 ~
    | cs8 e,16 ( fs ) a4 e16 ( fs ) cs'8 ~ cs e,16 ( fs )
    | << { \slurUp a8 ( gs ) \slurNeutral } \new CueVoice { \voiceTwo { \slurDown e8 [ ( ds ) ] \slurNeutral } } >> r fs r e r cs ~
    | cs2 cs8 ( \glissando e ) r a, ~

    | a1 ~ 
    | a1
    | R1 * 2

    | a''2.. e8 ~
    | e2.. a,8 ~
    | a2 ~ a8 cs4 a8 ~
    | a2 b16 ( cs ) e4 a8 ~

    | a2 ~ a8 b4 cs8 ~
    | cs8 b4 a8 ~ a e4 a,8 ~ 
    | a2 b16 ( cs ) e4 a,8 ~
    | a1

    | cs2 b16 ( a ) fs4 e'8 ~
    | e2 cs16 ( b ) a4 cs8 ~
    | cs2 b16 ( a ) fs4 e'8 ~
    | e8 fs4 cs8 ~ cs e4 b8 ~

    | b2 ~ b8 a4 gs8 ~
    | gs2 gs8 fs ( e ) cs ~ 
    | cs1 ~
    | cs1 

    | R1 * 8
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
