\version "2.25.20"

togetherApart = \relative c'' {
    \key g \major
    \time 9/8

    | cs4 ^\markup distrotion cs8 r4 d8 d8 r4
    | e4 e8 r4 fs8 fs8 r4
    | g4 g8 r4 a8 a8 r4
    | b4 b8 r4 cs8 cs8 r4

    \time 12/8

    | d8 d d d d d d d d d4.

    | R1. * 4

    | r2. c,4 b8 ~ b4.
    | a8 ( g ) e ~ e4. ~ e2.
    | R1.
    | r2. r4. r8 e' ( es )

    | fs1.

    | R1. * 3
    | a2. a4. g4 e8 ~

    | e2. c4 b8 ~ b4.
    | a8 ( g ) e ~ e4. ~ e2.

    | f'1.~
    | f2. ~ f4. ~ f8 e ( es )
    | fs1.

    | c,4. b a g
    | d'4. c b a
    | c4. b a g
    | d'4. c b a

    | c4. b a g
    | d'4. c b a
    | a1. ~
    | a1.

    | b'1.
    | c1.

    | d1.
    | \appoggiatura <d g ~>8 <e g>4. <d g> b4 a8 ~ a4 g8 ~
    | g4. ~ g4 d8 ( e4 ) g8 ~ g4.
    | c4. b a4 ( g8 ) ~ g4.

    | \appoggiatura <d' g ~>8 <e g>4. <d g> b4 a8 ~ a4 g8 ~
    | g4. ~ g4 d8 ( e4 ) g8 ~ g4.
    | b4 a g a ( g ) d
    | b'4 a ( g ) c b ( g )

    | \appoggiatura <d' g ~>8 <e g>4. <d g> b4 a8 ~ a4 g8 ~
    | g4. ~ g4 d8 ( e4 ) g8 ~ g4.
    | b1. ~
    | b2. ~ b4. ~ b8 b ( c ) (

    | b1. )
    | b8 ( c ) ( b ) a ( b ) ( a ) ds,4. r

    | R1.
    | r2. r4 <g' d'>8 ~ <g d'> r <g b>8
    | r4 r8 r4. r2.
    | R1.

    | r2. c,4 b8 ~ b4.
    | a8 ( g ) e ~ e4. ~ e2.
    | R1.
    | r2. r4. r8 e' ( es )

    | fs1.

    | r4 <g d'>8 ~ <g d'> r4 <g b>8 r4 r4.
    | <g d'>4 <g d'>8 <g d'>4 <g b>8 r4 <g d'>8 ~ <g d'>4.
    | gs1.
    | r4. \appoggiatura <d ~ a'>8 <d b'>4. <d a'> <d g>4 <c e>8 ~

    | <c e>2. c4 b8 ~ b4.
    | a8 ( g ) e ~ e4. ~ e2.

    | f'1.~
    | f2. ~ f4. ~ f8 e ( es )
    | fs1.
    | R1.

    | c,4. b a g
    | d'4. c b a
    | c4. b a g
    | d'4. c b a

    | c4. b a g
    | d'4. c b a
    | a1. ~
    | a1.

	% \tag #'album \pageBreak

    | b'1.
    | c4. r r2.

    | e1.
    | \appoggiatura <d g ~>8 <e g>4. <d g> b4 a8 ~ a4 g8 ~
    | g4. ~ g4 d8 ( e4 ) g8 ~ g4.
    | c4. b a4 ( g8 ) ~ g4.

    | \appoggiatura <d' g ~>8 <e g>4. <d g> b4 a8 ~ a4 g8 ~
    | g4. ~ g4 d8 ( e4 ) g8 ~ g4.
    | b4 a g a ( g ) d
    | b'4 a ( g ) c b ( g )

    | \appoggiatura <d' g ~>8 <e g>4. <d g> b4 a8 ~ a4 g8 ~
    | g4. ~ g4 d8 ( e4 ) g8 ~ g4.

    | g8 ( a ) ( b ) ~ b2. ~ b8 a ( g ) (
    | a2. ) ~ a4. ~ a8 b ( c ) (
    | b1. )

    | b8 ( c ) ( b ) a ( b ) ( a ) ds,4. r8 g ^\markup \italic "soli, with other guitar" ( bf ) (

     \key f \major
    \bar "||"

    | c8 ) d g ~ g4. ~ g4. ~ g8 g, ( bf ) (
    | c8 ) d a' ~ a4. ~ a4. ~a4 \tuplet 3/2 { g,16 ( bf ) ( c ) }
    | g'2. ~ g4. ~ g4 \tuplet 3/2 { g,16 ( bf ) ( c ) }
    | c'4 ( a8 ) ( c4. ) ~ c ~ c8 g, ( bf ) (

    | c8 ) d g ~ g4. ~ g4. ~ g4 \tuplet 3/2 { g,16 ( bf ) ( c ) }
    | e4 ( f8 ) e4. ~ e2.
    | b'4 ( \tuplet 3/2 { c16 ) ( b ) ( a ) ( } b4. ) ~ b2.
    | f8 e f g e g a e a b e, ( f )

    \key c \major
    \bar "||"

    | a2. ~ a4. ~ a8 a ( b )
    | g2. ~ g4. ~ g8 g ( a )
    | e2. ~ e4. f4.
    | d1.

    | fs'8 b, ( a ) e' a, ( fs ) d' fs, ( e ) d' e, ( d )
    | d1.

    \key g \major
    \bar "||"

    | R1. * 9

    | g'4. ^\markup \tiny G \harmonic fs \harmonic e \harmonic d \harmonic
    | b \harmonic a \harmonic g \harmonic fs4 \harmonic e8 ~ \harmonic
    | e1. \harmonic
    | d1. \harmonic

    | g1. \harmonic ~
    | g1. \harmonic

    | R1. * 4
    | R1. * 12

    \time 9/8

    | cs,4 cs8 r4 d8 d8 r4
    | e4 e8 r4 fs8 fs8 r4
    | g4 g8 r4 a8 a8 r4
    | b4 b8 r4 cs8 cs8 r4

    \time 12/8

    | d8 d d d d d d d d d4.

    | d,4. e fs g
    | b,1.
    | e1.
    | e4. d b a

    | d4. e fs g
    | b,1.
    | e1.
    | fs1.

    | g4. a b d
    | e4. d bf a
    | <e g>4 <e g> <e g> <e g> <e g> <e g>
    | <e g>4 <e fs> <e e> <e d> <e b> a,

    | g1. ~
    | g1.

    | b1. ^\markup "rit."
    | c1.

    | d1. ~
    | d1.

    \bar "|."
}
