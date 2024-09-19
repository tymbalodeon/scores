\version "2.25.19"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
    title = "Fake Conversations"
    subtitle = "Spelling Reform"
    composer = "Dan Wisniewski"
    arranger = "Andrew Ciampa, guitar"
}

music = \relative d'' {
    \key g \major
    \time 2/4

    \repeat volta 2 {
        | << r8 \\ \new CueVoice { \voiceThree \stemDown \parenthesize b8 \repeatTie } >> d'4 b8 ~
        | b a4 g8 ~
        | g g4 fs8 ~
        | fs e4 d8 ~

        | d8 d'4 b8 ~
        | b a4 g8 ~
        | g e4 d8 ~

        \alternative {
            \volta 1 {
                | d e4 b8 \laissezVibrer
            }

            \volta 2 {
                | d \repeatTie e4 ds8 ~
            }
        }
    }

    | ds2 ~
    | ds2 ~
    | ds2 ~
    | ds2

    | R2 * 8

    | r4 as'8 b ~
    | b2 ~
    | b4 as8 b ~
    | b4 a8 g ~

    | g4. d8
    | b'8 g4 d8
    | b'8 g4 d8
    | b'8 g4 d8

    | g2 ~
    | g2 ~
    | g2 ~
    | g2

    | <a, a'>2 ~
    | <a a'>2
    | <b b'>2 ~
    | <b b'>2

    | <d d'>2 ~
    | <d d'>2
    | <g, g>8 <g g> <fs g> <fs g>
    | <e g>8 <e g> <d g> <d g>

    | <c c'>2 ~
    | <c c'>2
    | <d d'>2 ~
    | <d d'>2

    | <g g'>2 ~
    | <g g'>2

    | <f f'>2 ~
    | <f f'>2 ~
    | <f f'>2 ~
    | <f f'>2

    \repeat volta 2 {
        | << r8 \\ \new CueVoice { \voiceThree \stemDown \parenthesize b8 \repeatTie } >> d'4 b8 ~
        | b a4 g8 ~
        | g g4 fs8 ~
        | fs e4 d8 ~

        | d8 d'4 b8 ~
        | b a4 g8 ~
        | g e4 d8 ~

        \alternative {
            \volta 1 {
                | d e4 b8 \laissezVibrer
            }

            \volta 2 {
                | d \repeatTie e4 ds8 ~
            }
        }
    }

    | ds2 ~
    | ds2 ~
    | ds2 ~
    | ds2

    | <b' b>2 ~
    | <b b>2 ~
    | <b b>2 ~
    | <b b>8 <e, e>4 <e d>8 ~

    | <e d>2 ~
    | <e d>2 ~
    | <e d>2 ~
    | <e d>2 

    | <b' b>2 ~
    | <b b>2 ~
    | <b b>2 ~
    | <b b>4 <a b>8 <g b> ~

    | <g b>4. d8
    | b'8 g4 d8
    | b'8 g4 d8

    | g2 ~
    | g2 ~
    | g2 ~
    | g2

    | <a, a'>2 ~
    | <a a'>2
    | <b b'>2 ~
    | <b b'>2

    | <d d'>2 ~
    | <d d'>2
    | <g, g>8 <g g> <fs g> <fs g>
    | <e g>8 <e g> <d g> <d g>

    | <c c'>2 ~
    | <c c'>2
    | <d d'>2 ~
    | <d d'>2

    | <g g'>2 ~
    | <g g'>2

    | <f f'>2 ~
    | <f f'>2 ~
    | <f f'>2 ~
    | <f f'>2

    | <b b'>8 <b b'> <b b'> <b b'>
    | <b b'>8 <b b'> <b b'> <b b'>
    | <a a'>8 <a a'> <a a'> <a a'>
    | <a a'>8 <a a'> <a a'> <a a'>

    | <fs' fs'>8 <fs fs'> <fs fs'> <fs fs'>
    | <fs fs'>8 <fs fs'> <fs fs'> <fs fs'>
    | <d d'>8 <d d'> <d d'> <d d'>
    | <d d'>8 <d d'> <d d'> <b b'>

    | <b b'>8 <b b'> <b b'> <b b'>
    | <b b'>8 <b b'> <b b'> <b b'>
    | <a a'>8 <a a'> <a a'> <a a'>
    | <a a'>8 <a a'> <a a'> <a a'>

    | <fs' fs'>8 <fs fs'> <fs fs'> <fs fs'>
    | <fs fs'>8 <fs fs'> <fs fs'> <fs fs'>
    | <d d'>8 <d d'> <d d'> <d d'>
    | <d d'>8 <d d'> <d d'> <b b'>

    | <b b'>8 <b b'> <b b'> <b b'>
    | <b b'>8 <b b'> <b b'> <b b'>
    | <a a'>8 <a a'> <a a'> <a a'>
    | <a a'>8 <a a'> <a a'> <a a'>

    | <fs' fs'>2 ~
    | <fs fs'>2 

    | R2 * 8

    \bar "|."
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
