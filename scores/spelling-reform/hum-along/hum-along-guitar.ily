\version "2.25.19"

humAlong = \relative a {
    \key a \major
    \time 4/4

    \partial 2

    <<
        \new CueVoice {
            r8 <a d a'>4 -> <g d' fs>8 -> \laissezVibrer
        }

        s2
    >>

    \repeat volta 2 {
        \sectionLabel Instrumental

        | R1 * 8

        \sectionLabel Verse

        | R1 * 8 
    }

    | fs'4. e8 ~ e2
    | d8 cs ( b ) a ~ a2 ~
    | a1 ~
    | a1

    | r2. r8 fs' ^\markup \italic synth ~
    | fs8 gs4 a8 ~ a cs4 e8 ~

    | e1 ~
    | e1
    | R1 * 6

    | e,16 ^\markup \italic guitar ( fs ) cs'8 ~ cs e,16 ( fs ) a4 e16 ( fs ) cs'8 ~
    | cs8 e,16 ( fs ) a4 e16 ( fs ) cs'8 ~ cs e,16 ( fs )
    | << { \slurUp a8 ( gs ) \slurNeutral } \new CueVoice { \voiceTwo { \slurDown e8 [ ( ds ) ] \slurNeutral } } >> r fs r e r cs ~
    | cs2 cs8 ( \glissando e ) r a, ~

    | a1 ~ 
    | a1
    | R1 * 2

    | a''2.. e8 ~
    | e2.. a,8 ~
    | a2 ~ a8 cs4 a8 ~
    | a2 b16 ( cs ) e4 a8 ~

    | a2 ~ a8 b4 cs8 ~
    | cs8 b4 a8 ~ a e4 a,8 ~ 
    | a2 b16 ( cs ) e4 a,8 ~
    | a1

    | cs2 b16 ( a ) fs4 e'8 ~
    | e2 cs16 ( b ) a4 cs8 ~
    | cs2 b16 ( a ) fs4 e'8 ~
    | e8 fs4 cs8 ~ cs e4 b8 ~

    | b2 ~ b8 a4 gs8 ~
    | gs2 gs8 fs ( e ) cs ~ 
    | cs1 ~
    | cs1 

    | R1 * 8

    << {
        | a'4 ^\markup \italic synth cs b8 a4 e'8 ~
        | e4 a, cs8 b4 e8 ~
        | e4 a, cs8 b a e' ~
        | e4 a, cs8 b4 e8 ~
        | e4 a, cs8 b a e' ~
        | e4 a, cs8 b4 e8 ~
        | e4 a, cs8 b a e' ~
        | e4 a, cs8 b a4
    } \\ {
        | a,4 cs b8 a4 e'8 ~
        | e4 a, cs8 b4 a8 ~
        | a4 cs b8 a a e'8 ~
        | e4 a, cs8 b4 a8 ~
        | a4 cs b8 a a e'8 ~
        | e4 a, cs8 b4 a8 ~
        | a4 cs b8 a a e'8 ~
        | e4 a, cs8 r4 a8 ~
    } >>

    | fs'4. ^\markup \italic guitar e8 ~ e2
    | d8 cs ( b ) a ~ a2 ~
    | a1 ~
    | a1

    | R1 * 4

    | R1 * 3
    | r4 cs' cs8 ( b ) a fs ~

    | fs1 ~
    | fs1
    | R1
    | r4 cs' << {
        cs8 ( b ) a b (

        | cs )
    } \\ {
        | s2
        | d8 ^\markup \italic synth ( cs ) \slurUp a d ( cs ) a d ( cs )
    } >>

    | a8 d ( cs ) a d ( cs ) a d
    | a8 ( gs ) e a ( gs ) e a ( gs )
    | e8 a ( gs ) e a ( gs ) e a 

    | gs8 cs, a' ( gs ) cs, a' ( gs ) cs,
    | a'8 ( gs ) cs, a' ( gs ) cs, a' ( gs )
    | cs,8 a' ( gs ) cs, a' ( gs ) cs, a' -> ~ 
    | a8 gs4 -> d8 -> ~ d cs4 -> a'8

    | d8 ( cs ) a d ( cs ) a d ( cs )
    | a8 d ( cs ) a d ( cs ) a d
    | cs8 gs d' ( cs ) gs d' ( cs ) gs
    | d'8 ( cs ) gs d' ( cs ) gs cs ( d )

    | R1 * 2
    | r4 ^\markup \italic synth a' r a
    | r4 a r a

    \repeat volta 2 {
        | r4 a r a
        | r4 a r a
        | r4 a r a
        | r4 a r a
    }

    \repeat volta 2 {
        | r4 ^\markup \italic (drums) a r a
        | r4 a r a
        | r4 a r a
        | r4 a r a
    }

    | r4 a r a
    | r4 a r a
    | r4 a r a
    | r4 a r a

    | R1 * 4

    | R1 \fermata

    \bar "|."
}
