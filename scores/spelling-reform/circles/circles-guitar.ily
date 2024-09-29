\version "2.25.19"

circles = \relative c'' {
    \key fs \major
    \time 4/4

    | R1 * 7
    | \new CueVoice \with { 
        \consists "Pitch_squash_engraver" 
        } { 
            \improvisationOn r4. c8 ~ c2 \fermata 
        }

    | R1 * 9
    | R1 * 8

    | << {
        s4 s2. ^\markup \italic G.P. 
    } {
        \new CueVoice \with { 
            \consists "Pitch_squash_engraver" 
        } { 
            \improvisationOn c8 -. r r2.
        }
    } >>

    | R1 * 5

    | r2 ds8.  \3 ( cs16 ) r as ( gs8 ) (
    | as1 )
    | R1

    | R1 * 6

    \override TextSpanner.bound-details.left.text = \markup \tiny "laissez vibrer"

    | es'8 \startTextSpan \2 -1 cs -1 gs -1 cs es cs gs cs
    | es8 cs gs cs gs' -4 cs, gs cs \stopTextSpan

    | R1 * 5

    | r8 as \4 ( gs ) fs r es r ds
    | r8 as \5 ( cs2. )

    | R1 * 2

    | R1
    | r2 r8 fs' \1 ( es ) cs ~ 
    | cs8 ( ds2.. )
    | r2 r8 fs ( es ) cs ~ 

    | cs8 as2..
    | r2 r8 es' cs gs ~ 
    | gs8 es4. ~ es4 fs16 ( es8. ) ~
    | es4. cs8 -> ~ cs2 

    | R1 ^\markup \italic G.P.

    | R1 * 3
    | as''4 gs8 r fs ds ( cs ) ( ds )

    | gs1 ~
    | gs2 as8. gs16 ~ gs8 fs
    | ds2.. fs8 (
    | es1 )
    | R1

    | R1 * 3
    | as4 gs8 r fs ds ( cs ) ( ds )

    | gs1 ~
    | gs2 as8. gs16 ~ gs8 fs
    | ds2.. fs8 (
    | es1 )

    | R1 * 6

    | es'8 \startTextSpan cs gs cs es cs gs cs
    | es8 cs gs cs gs' cs, gs cs \stopTextSpan

    | R1 * 5

    | r8 as, ( gs ) fs r es r ds
    | r8 as ( cs2. )

    | R1
    | r4 r8 as'16 fs cs8 ( ds ) r4

    | R1

    \new CueVoice {
        | r2 r8 fs' ( es ) cs ~ 
        | cs8 ( ds2.. )
        | r2 r8 fs ( es ) cs ~ 

        | cs8 as2..
        | r2 r8 es' cs gs ~ 
        | gs8 es4. ~ es4 fs16 ( es8. ) ~
        | es4. cs8 ~ cs8 
        
    } fs' ( es ) cs ~ 

    | cs8 ( ds2.. )

    | r2 r8 fs ( es ) cs ~ 
    | cs8 as2..
    | r2 r8 es' cs gs ~ 

    | gs8 es4. ~ es2 ~
    | es2. fs16 ( es8. ) ~
    | es4. cs8 ~ cs2 ~
    | cs2 r8 fs' ( es ) cs ~ 

    | cs8 ( ds2.. )
    | r2 r8 fs ( es ) cs ~ 
    | cs8 as2..
    | r2 r8 es' cs gs ~ 

    | gs8 es4. ~ es2 ~
    | es2. fs16 ( es8. ) ~
    | es4. cs8 ~ cs2 ~
    | cs2 r8 fs' ( es ) cs ~ 

    | cs8 ( ds2.. )
    | r2 r8 fs ( es ) cs ~ 
    | cs8 as2..
    | r2 r8 es' cs gs ~ 

    | gs8 es4. ~ es2 ~
    | es2. fs16 ( es8. ) ~
    | es2..  
    | << \new CueVoice \with { 
            \consists "Pitch_squash_engraver" 
        } {
            \voiceOne
            \improvisationOn    

            s8 r4. c8 -> ~ c2 \fermata
        } \\ { 
        \stemUp cs8 ~ cs1 \fermata 
    } >>

    \bar "|."
}
