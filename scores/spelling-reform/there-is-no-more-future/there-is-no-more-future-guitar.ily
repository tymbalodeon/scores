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

    | R8 * 9 ^\markup \italic "G.P."

    \time 3/8

    | R4. ^\markup \italic "\"Whatever could be...\""

    \time 6/8

    | R2. 

    % << { 
    %     \time 3/8

    %     | R4. 

    %     \time 6/8

    %     | R2. 
    % }  

    % \new Voice = "melody" { 
    %     \hideNotes 

    %     \time 3/8

    %     c16 c8. c8

    %     \time 6/8

    %     c4. c

    %     \unHideNotes 
    % } 

    % \new Lyrics = "lyrics" \with {
    %     \override VerticalAxisGroup.staff-affinity = #DOWN
    % } 

    % \context Lyrics = "lyrics" {
    %     \lyricsto "melody" { 
    %         \override LyricText.font-shape = #'italic

    %          "\"What" -- e -- ver could "be...\""
    %     }
    % } 
    %  >>

    | R2. ^\markup \italic G.P.

    \time 4/4

    | cs8 a'16 ( b ) e4 ~ e8 a,16 ( b ) cs8 a ~
    | a1 

    | cs,8 a'16 ( b ) e4 ~ e8 a,16 ( b ) cs8 e ~
    | e1 

    | cs,8 a'16 ( b ) e4 ~ e8 a,16 ( b ) fs'8 cs ~
    | cs1 

    | cs,8 a'16 ( b ) e4 ~ e8 cs16 ( b8. ) a8
    | fs1 

    | cs8 a'16 ( b ) e4 ~ e4 a16. gs fs16
    | cs1

    | cs,8 a'16 ( b ) e4 ~ e8 a,16 ( b ) cs8 a
    | fs,4 <fs d' a'> 4 4 4
}
