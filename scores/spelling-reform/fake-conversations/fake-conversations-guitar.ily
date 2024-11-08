\version "2.25.19"

fakeConversations = \relative d'' {
    \key g \major
    \time 4/4

    | r8 d'4 \1 b8 ~ b a4 g8 ~
    | g g4 fs8 ~ fs e4 d8 ~
    | d8 d'4 b8 ~ b a4 g8 ~
    | g e4 d8 ~  d e4 b8

    | r8 d'4 \1 b8 ~ b a4 g8 ~
    | g g4 fs8 ~ fs e4 d8 ~
    | d8 d'4 b8 ~ b a4 g8 ~
    | g e4 d8 ~  d e4 ds8 ~

    | ds1 ~
    | ds1

    | R1 * 4

    | r4 as'8 \3 b \2 ~ b2 ~
    | b4 as8 b ~ b4 a!8 g ~
    | g4. d8 -1 b'8 -1 g4 -1 d8
    | b'8 g4 d8 b'8 g4 d8

    | g1 ~
    | g1

    | <a, a'>1 \4 ^\markup \italic distortion
    | <b b'>1
    | <d d'>1
    | <g, g -0>8 <g g -0>8 <fs g -0> <fs g -0> <e g -0>8 <e g -0> <d g -0> <d g -0>

    | <c c'>1
    | <d d'>1
    | <g g'>1
    | <f f'>1 ~
    | <f f'>1

    | r8 ^\markup ord. d''4 \1 b8 ~ b a4 g8 ~
    | g g4 fs8 ~ fs e4 d8 ~
    | d8 d'4 b8 ~ b a4 g8 ~
    | g e4 d8 ~  d e4 b8

    | r8 d'4 \1 b8 ~ b a4 g8 ~
    | g g4 fs8 ~ fs e4 d8 ~
    | d8 d'4 b8 ~ b a4 g8 ~
    | g e4 d8 ~  d e4 ds8 ~

    | ds1 ~
    | ds1

    | <b' b>1 ^\markup \italic distortion ~
    | <b b>2 ~ <b b>8 <e, e>4 <e d>8 ~
    | <e d>1 ~
    | <e d>1

    | <b' b>1 ~
    | <b b>2 ~ <b b>4 <a b>8 <g b> ~

    | <g b>4. d8 b'8 g4 d8

    \time 2/4

    | b'8 g4 d8

    \time 4/4

    | g1 ~
    | g1

    | <a, a'>1
    | <b b'>1
    | <d d'>1
    | <g, g>8 <g g> <fs g> <fs g> <e g>8 <e g> <d g> <d g>

    | <c c'>1
    | <d d'>1
    | <g g'>1
    | <f f'>1 ~
    | <f f'>1

    \repeat volta 2 {
        | <b b'>8 <b b'> <b b'> <b b'> 8 8 8 8 8
        | <a a'>8 <a a'> <a a'> <a a'> 8 8 8 8 8
        | <fs' fs'>8 <fs fs'> <fs fs'> <fs fs'> 8 8 8 8 8
        \alternative {
            \volta 1 {
                | <d d'>8 <d d'> <d d'> <d d'> <d d'>8 <b b'> <b b'> <b b'>16 <b b'>
            }

            \volta 2 {
                | <d d'>8 <d d'> <d d'> <d d'>16 <d d'> <d d'>8 <b b'> <b b'> <b b'>16 <b b'>
            }
        }
    }

    | <b b'>8 <b b'> <b b'> <b b'> 8 8 8 8 8
    | <a a'>8 <a a'> <a a'> <a a'> 8 8 8 8 8
    | <fs' fs'>1 \fermata
    | R1

    | \new CueVoice {
        | r8 ^\markup \italic \tiny "Sing: \"Ba, ba, ba, ba...\"" d4 b8 ~
         b8 a4 g8 ~
        | g8 g'4 fs8 (
         e8 ) e4 g,8 ~

        | g8 d'4 <b ds>8 ~
         <b ds>8 <a ds>4 <g e'>8 ~
        | <g e'>8 <b g'>4 <a ~ fs'>8 (
         <a e'>8 ) <a e'>4 g8 ~

        | g8 d'4 b8 ~
         b8 a4 g8 ~
        | g8 g'4 fs8 (
         e8 ) e4 g,8 ~

        | g8 d'4 <b ds>8 ~
         <b ds>8 <a ds>4 <g e'>8
    }

    | R1

    \bar "|."
}
