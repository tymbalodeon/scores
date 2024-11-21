\version "2.25.20"

iAmYourHypocrite = \relative g' {
    \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet

    \key g \major

    | R1

    | << {
        g2. ^\markup \italic "e-bow (imitate synth swell)" g4 ~
        | g2 g ~
        | g4 g2. ^\markup sim.
    } {
        s8 \< s s \> s s s \!
        s8 \< s s \> s s s \!
        s8 \< s s \> s s s \!
    } >>
    | g2. g4 ~

    \mark \default

    | g2 ^\markup \center-align \italic \tiny "\"Unlike the sun...\"" g ~
    | g4 g2.
    | g2. g4 ~
    | g2 g ~

    | g4 g2.
    | g2. g4 ~
    | g2 g ~
    | g4 g2.

    | g2. g4 ~
    | g2 g ~
    | g4 g2.
    | g2. g4 ~

    | g2 g ~
    | g4 g2.
    | g2. g4 ~
    | g2 g ^\markup \center-align \italic \tiny "\"...crushed ice machines...\""
    \mark \default

    | R1 * 8

    \mark \default

    | R1 * 16
    % | R1 * 8
    % | \new CueVoice \relative d {
    %     \cueClef bass

    %     | d8 ^"bass" b a g ~ g2
    %     | b8 a g b ~ b2

    %     \cueClefUnset
    % }
    % | R1 * 6

    % \tag #'album \pageBreak

    \key e \major
    \bar "||"

    | R1

    \time 2/4

    | R2

    \time 4/4

    | R1 * 2
    | R1 * 7 ^\markup \italic \tiny "\"...look like I'm trying hard?\""

    \key cs \major
    \bar "||"

    | cs,4. \5 ^\markup \italic distortion ds8 ~ ds4 es
    | b4. fs'8 ~ fs4 es
    | cs4. bs?8 ~ bs4 cs
    | ds4. es8 ~ es2

    | cs4. ds8 ~ ds4 es
    | b4. fs'8 ~ fs4 es
    | cs4. bs?8 ~ bs4 cs
    | ds4. es8 ~ es4 gs

    | cs,4. ds8 ~ ds4 es
    | b4. fs'8 ~ fs4 es
    | cs4. bs?8 ~ bs4 cs
    | ds4. es8 ~ es2

    \key e \major
    \bar "||"

    | cs1 ~
    | cs1
    | e,1 ~
    | e1

    \key g \major
    \bar "||"

    \new Voice \with {
        \consists "Pitch_squash_engraver"
    } {
        \improvisationOn

        <<
            \repeat percent 4  {
                | c8 ^\markup ord. 8 8 8 8 8 8 8
                | c8 8 8 8 8 8 8 8
                | c8 8 8 8 8 8 8 8
                | c8 8 8 8 8 8 8 8
            }

            {
                s1 * 15
                s1 ^\markup \italic \tiny "\"...left alone.\""
            }
        >>
    }

    <<
        | R1 * 7
        { s1 * 7 ^\markup \italic \tiny "\"...look like I'm trying hard?\"" }
    >>

    \key cs \major
    \bar "||"

    | cs'4. ^\markup \italic distortion ds8 ~ ds4 es
    | b4. fs'8 ~ fs4 es
    | cs4. bs?8 ~ bs4 cs
    | ds4. es8 ~ es2

    | cs4. ds8 ~ ds4 es
    | b4. fs'8 ~ fs4 es
    | cs4. bs?8 ~ bs4 cs
    | ds4. es8 ~ es4 gs

    | cs,4. ds8 ~ ds4 es
    | b4. fs'8 ~ fs4 es
    | cs4. bs?8 ~ bs4 cs
    | ds4. es8 ~ es2

    | cs4. ds8 ~ ds4 es
    | b4. fs'8 ~ fs4 es
    | cs4. bs?8 ~ bs4 cs
    | ds4. es8 ~ es2

    \key e \major
    \bar "||"

    | cs1 ~
    | cs1
    | e,1 ~
    | e1 \fermata

    \bar "|."
}

iAmYourHypocriteChords = \chords {
    | s1 * 46
    | s2
    | s1 * 25

    \repeat unfold 4 {
        | g1
        | c1
        | g1
        | c1
    }
}
