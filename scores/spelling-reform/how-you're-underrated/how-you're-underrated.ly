\version "2.25.8"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "How You're Underrated"
  subtitle = "Spelling Reform"
  composer = "Dan Wisniewski"
}

music = \relative c' {
    \key bf \major
    \time 2/2

    | R1 * 8
    | R1 * 8
    | R1 * 13

    | R1 * 4

    | f,1
    | ff1
    | ef1
    | f1

    | ff1
    | ef1
    | ff1
    | ef1

    | r8 d'' ( c ) g ( bf ) r r4
    | r8 d ( c ) g ( bf ) f' r4
    | r8 d ( c ) g ( bf ) r r4
    | r8 c ( d ) f bf r r4

    | bf,,8 bf bf bf bf bf bf bf
    | bf8 bf bf bf bf bf c d
    | d8 d d d d d d d
    | d8 d d d c c c c

    | bf8 bf bf bf bf bf bf bf
    | bf8 bf bf bf bf bf c d
    | d8 d d d d d d d
    | d8 d d d d d d d16 ( ef )

    | f8 f f f f f f f
    | f8 f f f f f f f
    | f8 f f f f f f f
    | f8 f f f f ef ef d

    | d8 c4 c4 c8 c c
    | c8 c c c c c c c
    | bf8 bf bf bf bf bf bf bf
    | bf8 bf bf bf bf bf bf bf

    | bf8 bf bf bf bf bf bf bf
    | bf8 bf bf bf bf bf bf bf
    | bf8 bf bf bf bf bf bf bf
    | bf8 bf bf bf bf bf bf bf

    | bf8 r r4 r2

    | d'8 ( bf ) bf ( d ) d8 ( bf ) bf ( d )
    | d8 ( bf ) bf ( d ) d8 ( bf ) bf ( d )
    | d8 ( bf ) bf ( d ) d8 ( bf ) bf ( d )
    | d8 ( bf ) bf ( d ) d8 ( bf ) bf ( d )

    | bf'8 bf bf bf bf bf bf bf
    | bf8 bf bf bf bf bf bf bf
    | bf8 bf bf bf bf bf bf bf
    | bf8 bf bf bf bf bf bf bf

    | bf8 bf bf bf bf bf bf bf
    | bf8 bf bf bf bf bf bf bf
    | bf8 bf bf bf bf bf bf bf
    | bf8 bf bf bf bf bf bf bf

    | R1 * 4

    | R1 * 16

    | f,,1
    | ff1
    | ef1 ~
    | ef1

    | bf'''8 bf bf bf bf bf bf bf
    | bf8 bf bf bf bf bf bf bf
    | bf8 bf bf bf bf bf bf bf
    | bf8 bf bf bf bf4 r
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
