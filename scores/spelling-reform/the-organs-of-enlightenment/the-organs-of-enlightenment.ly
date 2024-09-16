\version "2.25.17"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
    title = "The Organs of Enlightenment"
    subtitle = "Spelling Reform"
    composer = "Dan Wisniewski"
}

music = \relative c'' {
    \key af \major
    \time 3/4

    | R2. * 12

    | r8 af r af r4
    | r8 af r af r c 
    | r8 af r8 af r4

    \time 5/8

    | R8 * 5

    \time 6/8

    | R2.

    | R2. * 8

    | R2.

    | R2. * 8

    | <af af'>2. ~
    | <af af'>2.
    | <df df'>2. 
    | <c c'>2.

    | <af af'>2. ~
    | <af af'>2.
    | <g g'>2. ~
    | <g g'>4. <bf bf'>

    | <af af'>2. ~
    | <af af'>2.
    | <df df'>2. 
    | <c c'>2.

    | <af af'>2. ~
    | <af af'>2.
    | <bf bf'>2. ~

    \time 3/8

    | <bf bf'>4. ~

    \time 2/4

    | <bf bf'>4. r8

    \time 3/4

    | af2.
    | ef'8 df c4 bf
    | af2.
    | f'8 ef c4 af

    | f2.
    | ef'8 df c4 bf
    | af2.

    \time 5/8

    | f'8 ef c4 af8

    \time 6/8

    | R2. * 8

    | <af af'>2. ~
    | <af af'>2.
    | <df df'>2. 
    | <c c'>2.

    | <af af'>2. ~
    | <af af'>2.
    | <g g'>2. ~
    | <g g'>4. <bf bf'>

    | <af af'>2. ~
    | <af af'>2.
    | <df df'>2. 
    | <c c'>2.

    | <af af'>2. ~
    | <af af'>2.
    | <bf bf'>2. ~
    | <bf bf'>2. ~

    | <af af'>2. ~
    | <af af'>4. <df df'>
    | <c c'>2. ~
    | <c c'>2. 

    | <af af'>2. ~
    | <af af'>4. <bf bf'>
    | <c c'>2. ~
    | <c c'>2. 

    | <af af'>2. ~
    | <af af'>4. <df df'>
    | <c c'>2. ~
    | <c c'>2. 

    | <af af'>2. ~
    | <af af'>4. <bf bf'>
    | <c c'>2. ~
    | <c c'>2. 

    | R2. * 8

    | af,16 c bf df af ef' af,16 c bf df af ef'
    | af,16 c bf df af ef' af,16 af' af, ef' af, df
    | bf16 c af df bf ef af,16 c af df bf ef
    | af,16 c bf df af ef' af,16 c bf df af af'

    | af,16 ef' bf df af c af ef' bf ef af, df
    | af16 c bf df af ef' af, c bf df af c

    | R2. \fermata

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
