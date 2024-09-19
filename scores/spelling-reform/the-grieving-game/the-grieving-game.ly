\version "2.25.19"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
    title = "The Grieving Game"
    subtitle = "Spelling Reform"
    composer = "Dan Wisniewski"
}

music = \relative c'' {
    \key af \major

    | R1 * 5

    \time 2/4

    | \new CueVoice \with {
        \consists "Pitch_squash_engraver"
    } { 
        \improvisationOn r4. c8 ~ 

        \time 4/4

        | c8 c c c c c c c
        | c8 c c c c c c4
    }

    \time 2/4

    | R2 * 3

    \time 4/4

    | r8 af'' ^\markup \italic \tiny A♭ b, c ~ c2

    \time 2/4

    | R2 * 3

    \time 4/4

    | r8 af' b, c ~ c2

    \time 2/4

    | R2 * 3

    \time 4/4

    | r8 af' b, c ~ c2

    | R1 
    | r2. af,4 (
    | bf1 ) ~
    | bf2 ef ( 

    | af,1 ) ~
    | af2. af4 ( ~
    | bf1 ) ~
    | bf2. bf4 (

    | f'1 ) ~
    | f2. f4 (
    | c1 ) ~
    | c2 ef (

    | bf1 ~
    | bf1

    \time 3/4

    | <af, ef' af c ef af>4 r8 <ef' bf' ef g bf>8 ~ <ef bf' ef g bf> r 

    \time 4/4

    | <f c' f af c>4 r8 <df af' df f af>8 ~ <df af' df f af>2

    \time 3/4

    | <af ef' af c ef af>4 r8 <ef' bf' ef g bf>8 ~ <ef bf' ef g bf> r 

    \time 4/4

    | <f c' f af c>4 r8 <df af' df f af>8 ~ <df af' df f af>2

    \time 3/4

    | <af ef' af c ef af>4 r8 <ef' bf' ef g bf>8 ~ <ef bf' ef g bf> r 

    \time 2/4

    | <f c' f af c>4 r8 <df af' df f af>8 ~ 

    \time 4/4

    | <df af' df f af>8 c c c c c c c

    \time 3/4

    | c8 c c c c4

    \time 2/4

    | R2 * 3

    \time 4/4

    | r8 af''' ^\markup \italic \tiny A♭ b, c ~ c2

    \time 2/4

    | R2 * 3

    \time 4/4

    | r8 b' ^\markup \italic \tiny B b, c ~ c2

    \time 2/4

    | R2 * 3

    \time 4/4

    | r8 f^\markup \italic \tiny F b, c ~ c2

    \time 2/4

    | R2 * 3

    \time 4/4

    | r8 af' b, c ~ c2
    | R1

    | R1 * 7

    \new Voice \with {
        \consists "Pitch_squash_engraver"
    } {
        \improvisationOn

        | r4. c8 -> \fermata ~ c2
    }

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
