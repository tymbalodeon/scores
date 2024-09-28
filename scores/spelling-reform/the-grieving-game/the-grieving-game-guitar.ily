\version "2.25.19"

theGrievingGame = \relative c'' {
    \key af \major

    | R1 * 5

    \time 2/4

    | << 
        \new CueVoice \with {
            \consists "Pitch_squash_engraver"
        } { 
            \improvisationOn r4. c8 ~ 

            \time 4/4

            | c8 -> c c c c c c c
            | c8 c c c 
            % << { 
            %     \new CueVoice = "lyrics" \with { 
            %         \consists "Pitch_squash_engraver" 
            %     } { 
            %         \improvisationOn 
                    c c c4 
            %     } 
            % } { 
            %     \new Lyrics \lyricsto "lyrics" { 
            %         \lyricmode {
            %             \override LyricText #'font-shape = #'italic
            %              No I won't
            %         } 
            %     } 
            % } >>
        }

        { 
            | s1 
            | s2 s4 s ^\markup \italic "\"No I won't...\"" 
        }
    >>

    \time 2/4

    | R2 * 3

    \time 4/4

    \override TextSpanner.bound-details.left.text = \markup \tiny "Laissez Vibrer"

    | r8 af'' ^\markup \italic \tiny A♭ \startTextSpan b, c ~ c2 

    \time 2/4

    | R2 * 3 \stopTextSpan

    \time 4/4

    | r8 af' ^\markup \italic "sim." b, c ~ c2

    \time 2/4

    | R2 * 3

    \time 4/4

    | r8 af' b, c ~ c2

    | R1 
    | r2. af,4 ^\markup \italic "slide, distortion" (
    | bf1 ) ~
    | bf2 ef ( 

    | af,1 ) ~
    | af2. af4 ( ~
    | bf1 ) ~
    | bf2. bf4 (

    | f'1 ) ~
    | f2. f4 (
    | c1 ) ~
    | c2 ( ef ) (

    | bf1 ) ~
    | bf1

    \time 3/4

    \newSpacingSection
    \override Score.SpacingSpanner.spacing-increment = 3

    | <af, ef' af c ef af>4 ^\markup \italic ord. ^\markup \fret-diagram-terse "4;6;6;5;4;4;" r8 <ef' bf' ef g bf>8 ^\markup \fret-diagram-terse "x;6;8;8;8;6;"  ~ <ef bf' ef g bf> r 

    \time 4/4

    | <f c' f af c>4 ^\markup \fret-diagram-terse "x;8;10;10;9;8;" r8 <df af' df f af>8 ^\markup \fret-diagram-terse "x;4;6;6;6;4;" ~ <df af' df f af>2

    \time 3/4

    \newSpacingSection
    \revert Score.SpacingSPanner.spacing-increment

    | <af ef' af c ef af>4 r8 <ef' bf' ef g bf>8 ~ <ef bf' ef g bf> r 

    \time 4/4

    | <f c' f af c>4 r8 <df af' df f af>8 ~ <df af' df f af>2

    \time 3/4

    | <af ef' af c ef af>4 r8 <ef' bf' ef g bf>8 ~ <ef bf' ef g bf> r 

    \time 2/4

    | <f c' f af c>4 r8 <df af' df f af>8 ~ 

    \time 4/4

    | <df af' df f af>8 8 8 8 8 8 8 8

    \time 3/4

    | 8 8 8 8 4

    \time 2/4

    | R2 * 3

    \time 4/4

    \override TextSpanner.bound-details.left.text = \markup \tiny "Laissez Vibrer"

    | r8 af''' \startTextSpan ^\markup \italic \tiny A♭ b, c ~ c2

    \time 2/4

    | R2 * 3 \stopTextSpan

    \time 4/4

    | r8 b' ^\markup \italic \tiny B  ^\markup \italic "sim." b, c ~ c2

    \time 2/4

    | R2 * 3

    \time 4/4

    | r8 f^\markup \italic \tiny F b, c ~ c2

    \time 2/4

    | R2 * 3

    \time 4/4

    | r8 af' b, c ~ c2
    | R1

    | R1 * 7

    \new CueVoice \with {
        \consists "Pitch_squash_engraver"
    } {
        \improvisationOn

        | r4. c8 -> \fermata ~ c2
    }

    \bar "|."
}
