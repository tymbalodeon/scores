\version "2.25.17"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
    title = "Circles"
    subtitle = "Spelling Reform"
    composer = "Dan Wisniewski"
}

music = \relative c'' {
    \key fs \major
    \time 4/4

    | R1 * 7
    | \new CueVoice \with { \consists "Pitch_squash_engraver" } { \improvisationOn r4. c8 ~ c2 \fermata }

    | R1 * 9
    | R1 * 8
    | \new CueVoice \with { \consists "Pitch_squash_engraver" } { \improvisationOn c8 -. r r2. ^\markup \italic G.P. }

    | R1 * 5
    | r2 ds8. ( cs16 ) ~ cs as ( gs8 )
    | as1
    | R1

    | R1 * 6
    | es'8 cs gs cs es cs gs cs
    | es8 cs gs cs gs' cs, gs cs

    | R1 * 5
    | r8 as ( gs ) fs r es r ds
    | r8 as ( cs2. )

    | R1 * 2

    | R1
    | r2 r8 fs' ( es ) cs ~ 
    | cs8 ( ds2.. )
    | r2 r8 fs ( es ) cs ~ 

    | cs8 ( as2.. )
    | r2 r8 es' ( cs ) gs ~ 
    | gs8 ( es4. ) ~ es4 fs16 ( es8. ) ~
    | es4. cs8 ~ cs2 

    | R1 ^\markup \italic G.P.

    | R1 * 3
    | as''4 gs8 r fs ds ( cs ) ( ds )
    | gs1
    
    
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
