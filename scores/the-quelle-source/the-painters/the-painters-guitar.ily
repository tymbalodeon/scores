\version "2.25.22"

thePainters = \relative d'' {
    \key g \major
    \time 4/4

    | R1
    | r4. d8 ^\markup distortion c' c c b ~
    | b4 g2. ~
    | g4. d8 d d c' b ~

    | b4 g2. ~
    | g4. g8 a g a b ~
    | b4 g2. ~
    | g4. d8 e d b g, ~

    | g1 ~
    | g1
    | R1 * 14

    | r4 g'' g a
    | a4 b b d
    | r4 g, g a
    | b4 c8 b ~ b a g4

    | r4 g g a
    | a4 b b d
    | r4 g, g a
    | b4 c8 b ~ b a g4

    | r4 c ~ c8 b4.
    | d4. g,8 ~ g2
    | r8 d c' ( b ) ( c ) d, g ( a )
    | d8 d, g b ( c ) ( b ) a ( g )

    | r4 c ~ c8 b4.
    | d4. g,8 ~ g2
    | r4 c ~ c8 b4.
    | d4. d8 ~ d2

      \clef percussion
      \drummode {
            \set countPercentRepeats = ##t
            \xNotesOn
            \repeat percent 7 { | hc8 ^\markup handclaps 8 8 8 8 8 8 8 }
            \xNotesOff
      }

      | R1

      \clef treble
    | a8 ( fs ) a ( fs ) g b ( c ) g' ^\markup \tiny G ~
    | g1
    | a,8 ( fs ) a ( fs ) g b ( c ) g' ~
    | g1

    | a,8 ( fs ) a ( fs ) g b ( c ) g' ~
    | g1
    | a,8 ( fs ) a ( fs ) g b ( c ) g' ~
    | g1

    | r4 g, g a
    | a4 b b d
    | r4 g, g a
    | b4 c8 b ~ b a g4

    | r4 g g a
    | a4 b b d
    | r4 g, g a
    | b4 c8 b ~ b a g4

    | r4 c ~ c8 b4.
    | d4. g,8 ~ g2
    | r8 d c' ( b ) ( c ) d, g ( a )
    | d8 d, g b ( c ) ( b ) a ( g )

    | r4 c ~ c8 b4.
    | d4. g,8 ~ g2
    | r4 c ~ c8 b4.
    | d4. d8 ~ d2

    | R1 * 8

    \repeat volta 2 {
        | <c,, g' d' g g>4 ^\markup ord. ^\markup {
              \fret-diagram-terse "x;o;2;4;5;o;"
            } <c g' d' g g> <c g' d' g g>8 <c g' d' g g> <c g' d' g g> <c g' d' g g>
        | <c g' d' g g>4 <c g' d' g g> <c g' d' g g>8 <c g' d' g g> <c g' d' g g> <c g' d' g g>
        | <d g d' fs g>4 ^\markup {
              \fret-diagram-terse "x;2;2;4;4;o;"
            } <d g d' fs g> <d g d' fs g>8 <d g d' fs g> <d g d' fs g> <d g d' fs g>
        | <d g d' fs g>4 <d g d' fs g> <d g d' fs g>8 <d g d' fs g> <d g d' fs g> <d g d' fs g>

        | <e g d' g g>4 ^\markup {
              \fret-diagram-terse "x;4;2;4;5;o;"
            } <e g d' g g> <e g d' g g>8 <e g d' g g> <e g d' g g> <e g d' g g>
        | <e g d' g g>4 <e g d' g g> <e g d' g g>8 <e g d' g g> <e g d' g g> <e g d' g g>
        | <fs a d g fs>4 ^\markup {
              \fret-diagram-terse "x;6;4;4;4;o;"
            } <fs a d g fs> <fs a d g fs>8 <fs a d g fs> <fs a d g fs> <fs a d g fs>

        \alternative {
            \volta 1 {
                | <fs a d g fs>4 <fs a d g fs> <fs a d g fs>8 <fs a d g fs> <fs a d g fs> <fs a d g fs>
            }

            \volta 2 {
                | <fs a d g fs>8 <fs a d g fs> <fs a d g fs> <fs a d g fs> <fs a d g fs> <fs a d g fs> <fs a d g fs> <fs a d g fs>
            }
        }
    }

    | <c g' c e g>4 ^\markup distortion ^\markup {
          \fret-diagram-terse "x;o;2;2;2;o;"
        } <c g' c e g> r8 <c g' c e g> r <c g' c e g>
    | r4 <c g' c e g>4 r8 <c g' c e g> <c g' c e g> r
    | <c a' c fs g>4 ^\markup {
          \fret-diagram-terse "x;o;4;2;4;o;"
        } <c a' c fs g> r8 <c a' c fs g> r <c a' c fs g>
    | r4 <c a' c fs g>4 r8 <c a' c fs g> <c a' c fs g> r

    | <c fs d' e g>4 ^\markup {
          \fret-diagram-terse "x;o;1;4;2;o;"
        } <c fs d' e g> r8 <c fs d' e g> r <c fs d' d g> ^\markup {
          \fret-diagram-terse "x;o;1;4;o;o;"
        }
    | r4 <c fs d' d g>4 r8 <c fs d' d g> <c fs d' d g> r
    | <c fs c' d g>4 ^\markup {
          \fret-diagram-terse "x;o;1;2;o;o;"
        } <c fs c' d g> r8 <c fs c' d g> r <c fs c' d g>
    | r4 <c fs c' d g>4 <c fs c'd g>8 <c fs c' d g> <c fs c' d g> r

    | <g d' g b d g>1 ^\markup {
          \fret-diagram-terse "o;2;2;1;o;o;"
        } ~
    | <g d' g b d g>1 \fermata

    \bar "|."
}
