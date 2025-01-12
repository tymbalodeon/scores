\version "2.25.22"

\include "predefined-guitar-fretboards.ly"

theGrievingGame = \relative c'' {
    \key af \major

    \time 2/4

    | R2 * 10

    | <<
        \new CueVoice \with {
            \consists "Pitch_squash_engraver"
        } {
            \improvisationOn r4. c8 ~

            | c8 -> c c c
            | c c c c
            | c8 c c c
        }

        {
            | s2
            | s2
            | s2 s4 ^\markup \italic "\"No I won't...\""  s
        }
    >>

    | R2

    | R2 * 3

    \override TextSpanner.bound-details.left.text = \markup "laissez vibrer"

    | r8 af'' \1 ^\markup \italic \tiny A♭ \startTextSpan b, \3  c \2 ~ c2

    | R2 * 3 \stopTextSpan

    | r8 af' ^\markup \italic "sim." b, c ~ c2

    | R2 * 3

    | r8 af' b, c ~ c2

    \time 4/4

    | R1
    | r2. af,4 \4 ^\markup \italic "slide, distortion" ( \glissando
    | bf1 ) ~
    | bf2 ef ( \glissando

    | af,1 ) ~
    | af2. af4 ( \glissando
    | bf1 ) ~
    | bf2. bf4 ( \glissando

    | f'1 ) ~
    | f2. f4 ( \glissando
    | c1 ) ~
    | c2 \glissando ef ( \glissando

    | bf1 ) ~
    | << bf1 { s2. s8 s8 ^\markup \italic ord.  } >>

    \time 3/4

    \newSpacingSection
    \override Score.SpacingSpanner.spacing-increment = 3

    | <af, ef' af c ef af>4 ^\markup \fret-diagram-terse "4;6;6;5;4;4;" r8 <ef' bf' ef g bf>8 ^\markup \fret-diagram-terse "x;6;8;8;8;6;"  ~ <ef bf' ef g bf> r

    \time 2/4

    | <f c' f af c>4 ^\markup \fret-diagram-terse "x;8;10;10;9;8;" r8 <df af' df f af>8 ^\markup \fret-diagram-terse "x;4;6;6;6;4;" ~ <df af' df f af>2

    \time 3/4

    \newSpacingSection
    \revert Score.SpacingSpanner.spacing-increment

    | <af ef' af c ef af>4 r8 <ef' bf' ef g bf>8 ~ <ef bf' ef g bf> r

    \time 2/4

    | <f c' f af c>4 r8 <df af' df f af>8 ~ <df af' df f af>2

    \time 3/4

    | <af ef' af c ef af>4 r8 <ef' bf' ef g bf>8 ~ <ef bf' ef g bf> r

    \time 2/4

    | <f c' f af c>4 r8 <df af' df f af>8 ~

    | <df af' df f af>8 8 \downbow 8 \downbow 8 \downbow
    \time 3/4
    | 8 ^\markup sim. 8 8 8

    8 8

    \time 2/4

    | 8 \downbow ^\markup \italic "\"No I won't...\"" 8 \upbow 4 \downbow

    | R2 * 3

    \override TextSpanner.bound-details.left.text = \markup "laissez vibrer"

    | r8 af''' \startTextSpan ^\markup \tiny A♭ b, c ~ c2

    | R2 * 3 \stopTextSpan

    | r8 b' ^\markup \tiny B  ^\markup "sim." b, c ~ c2

    | R2 * 3

    | r8 f^\markup \tiny F b, c ~ c2

    | R2 * 3

    | r8 af' b, c ~ c2
    | R1

    \repeat volta 2 {
        | <af,, ef' af c ef af>8 \downbow 8 \upbow r <ef' bf' ef g bf> \upbow ~ <ef bf' ef g bf> 8 8 \upbow r <f c' f af c> \upbow ~
        | <f c' f af c> <f c' f af c> \upbow r <df af' df f af> \upbow ~ <df af' df f af> 8 8 \upbow 8 \downbow 8 \upbow
        | <af ef' af c ef af>8 8 r <ef' bf' ef g bf> ~ <ef bf' ef g bf> 8 8 r <f c' f af c> ~
        | <f c' f af c> <f c' f af c> r <df af' df f af> ~

        \alternative {
            \volta 1 {
                | <df af' df f af> 8 8 8 8
            }

            \volta 2 {
                | <df af' df f af>2 \repeatTie
            }
        }
    }


    \bar "|."
}

theGrievingGameChords = \chords {
    s1 * 5
    s2
    s1 * 2

    s2 * 3
    s1
    s2 * 3
    s1
    s2 * 3
    s1 * 3

    s1 * 12

    af4 s8 ef s4
    f4:m s8 df s2

    s2.
    s1
    s2.
    s2
    s1
    s2.

    s2 * 3
    s1
    s2 * 3
    s1
    s2 * 3
    s1
    s2 * 3
    s1
    s1

    af4. ef2 f:m df
}
