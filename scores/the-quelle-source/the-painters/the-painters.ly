\version "2.25.19"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
    title = "The Painters"
    subtitle = "The Quelle Source"
    composer = "Dan Wisniewski"
}

music = \relative d'' {
    \key g \major
    \time 4/4

    | R1 
    | r4. d8 c' c c b ~
    | b4 g2. ~
    | g4. d8 d d c' b ~

    | b4 g2. ~
    | g4. g8 a g a b ~
    | b4 g2. ~
    | g4. d8 e d b g ~

    | g1 ~
    | g1 
    | R1 * 6
    | R1 * 5
    | r2 r
    | r1

    | r4 g' g a
    | a4 b b d
    | r4 g, g a 
    | b4 c8 b ~ b a g4
    
    | r4 g g a
    | a4 b b d
    | r4 g, g a 
    | b4 c8 b ~ b a g4

    | r4 c ~ c8 b4.
    | d4. g,8 ~ g2
    | r8 d c' ( b ) c d, g ( a )
    | d8 d, g b ( c ) ( b ) a ( g )

    | r4 c ~ c8 b4.
    | d4. g,8 ~ g2
    | r4 c ~ c8 b4.
    | d4. d8 ~ d2
    
    | R1 * 8

    | a8 ( fs ) a ( fs ) g b ( c ) g' ~
    | g1
    | a,8 ( fs ) a ( fs ) g b ( c ) g' ~
    | g1

    | a,8 ( fs ) a ( fs ) g b ( c ) g' ~
    | g1
    | a,8 ( fs ) a ( fs ) g b ( c ) g' ~
    | g1

    | r4 g, g a
    | a4 b b d
    | r4 g, g a 
    | b4 c8 b ~ b a g4
    
    | r4 g g a
    | a4 b b d
    | r4 g, g a 
    | b4 c8 b ~ b a g4

    | r4 c ~ c8 b4.
    | d4. g,8 ~ g2
    | r8 d c' ( b ) c d, g ( a )
    | d8 d, g b ( c ) ( b ) a ( g )

    | r4 c ~ c8 b4.
    | d4. g,8 ~ g2
    | r4 c ~ c8 b4.
    | d4. d8 ~ d2
    
    | R1 * 8

    | R1 * 8
    | R1 * 8

    | R1 * 8
    | R1

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
