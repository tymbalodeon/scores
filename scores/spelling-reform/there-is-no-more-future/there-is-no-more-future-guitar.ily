\version "2.25.19"

thereIsNoMoreFuture = \relative c' {
    \key a \major

    \time 6/8

    | R2.
    | R2. * 4

    \time 3/8

    | R4.

    \time 6/8

    | R2. * 2

    \time 3/8

    | R4.

    \time 6/8

    | R2. * 2

    \time 9/8

    | R8 * 9

    \time 6/8

    | R2. * 2

    \time 9/8

    | R8 * 9

    << { 
        \time 3/8

        | R4. 

        \time 6/8

        | R2. 
    } { 
        \new Voice = "lyrics" { 
            \hideNotes 

            \time 3/8

            c16 c8. c8

            \time 6/8

            c4. c

            \unHideNotes 
        } 
    } { 
        \new Lyrics \lyricsto "lyrics" { 
            \lyricmode {
                \override LyricText.font-shape = #'italic

                 "\"What" -- e -- ver could "be...\""
            } 
        } 
    } >>

    | R2. ^\markup \italic G.P.

    \time 4/4

    | cs4 a'8 ( b ) e2 ~
    | e4 a,8 ( b ) cs4 a ~
    | a1 ~ 
    | a1

    | cs,4 a'8 ( b ) e2 ~
    | e4 a,8 ( b ) cs4 e ~
    | e1 ~ 
    | e1

    | cs,4 a'8 ( b ) e2 ~
    | e4 a,8 ( b ) fs'4 cs ~
    | cs1 ~ 
    | cs1

    | cs,4 a'8 ( b ) e2 ~
    | e4 cs8 ( b ) ~ b4 a
    | fs1 ~ 
    | fs1

    | cs4 a'8 ( b ) e2 ~
    | e2 a8. gs fs8
    | cs1 ~ 
    | cs1

    | cs,4 a'8 ( b ) e2 ~
    | e4 a,8 ( b ) cs4 a
    | fs,2 <fs d' a'>
    | 2 2
}
