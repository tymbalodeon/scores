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

    | R4. ^\markup \italic \tiny "\"Whatever could be...\""

    \time 6/8

    | R2. 

    | R2. ^\markup \italic G.P.

    \time 4/4

    <<
        {
            \repeat unfold 4 {
                s1 ^\markup \fret-diagram-terse "x;4;x;2;x;x;"
                s1 ^\markup \fret-diagram-terse "2;x;o;2;x;x;"
            }
        }

        \new CueVoice {
            | cs8 a'16 ( b ) e4 -0 ~ e8 a,16 ( b ) cs8 a ~
            | a1 

            | cs,8 a'16 ( b ) e4 ~ e8 a,16 ( b ) cs8 e ~
            | e1 

            | cs,8 a'16 ( b ) e4 ~ e8 a,16 ( b ) fs'8 cs ~
            | cs1 

            | cs,8 a'16 ( b ) e4 ~ e8 cs16 \3 ( b8. ) a8
            | fs1 

            | cs8 a'16 ( b ) e4 ~ e4 a16. gs fs16
            | cs1

            | cs,8 a'16 ( b ) e4 ~ e8 a,16 ( b ) cs8 a
            | fs,4 <fs d' a'> ^\markup \fret-diagram-terse "2;x;o;2;x;x;" 4 4 
        }
    >>

    \repeat volta 2 {
        \time 2/4

        | <cs' a'>4 ^\markup \fret-diagram-terse "x;4;x;2;x;x;" ^\markup \italic \tiny "\"There is no more future...\"" 4

        \time 4/4

        | <fs, d' a'>4 ^\markup \fret-diagram-terse "2;x;o;2;x;x;" 8. 16 4 r16 <fs d' a'>16 16 r

        \time 2/4

        | <cs' a'>4 4

        \time 4/4

        | <fs, d' a'>4 8. 16 4 r16 <fs d' a'>16 16 r

        \time 2/4

        | <cs' a'>4 ^\markup \italic \tiny "\"Aren't I elated?...\"" 4

        \time 4/4

        | <fs, d' a'>4 8. 16 4 r16 <fs d' a'>16 16 r

        \alternative {
            \volta 1 {
                \time 2/4

                | <cs' a'>4 4

                \time 4/4

                | <fs, d' a'>4 8. 16 4 r16 <fs d' a'>16 16 r
            }

            \volta 2 {
                \time 2/4

                | <cs' gs' cs e gs>4 ^\markup \fret-diagram-terse "x;4;6;6;5;4;" ^\markup \italic [solo] 4

                \time 4/4

                | <fs, cs' fs a cs fs>4 ^\markup \fret-diagram-terse "2;4;4;2;2;2;" 8. 16 4 r16 <fs cs' fs a cs fs>16 16 r
            }
        }
    }

    \repeat volta 2 {
        \time 2/4

        | <cs' gs' cs e gs>4 4

        \time 4/4

        | <fs, cs' fs a cs fs>4 8. 16 4 r16 <fs cs' fs a cs fs>16 16 r
    }

    \repeat volta 2 {
        \time 2/4

        | <cs' a'>4 4

        \time 4/4

        | <fs, d' a'>4 8. 16 4 r16 <fs d' a'>16 16 r
    }
}
