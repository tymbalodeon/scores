\version "2.27.0"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
    title = "Borrachos"
    subtitle = "Tomo Choco"
    composer = "Ashley Hartman"
    arranger = "Ben Rosen, bass"
}

music = \relative ef {
    \clef bass
    \key ef \major
    \time 6/8

    | ef4. ~ ef8 \acciaccatura f16 \glissando g8 bf
    | f'2.
    | ef,4. ~ ef8 \acciaccatura f16 \glissando g8 bf
    | af,8. g f4.

    \mark \markup \box \bold \tiny VERSE

    | ef'4. ~ ef8 \acciaccatura f16 \glissando g8 bf
    | f4. ~ f8 f, g
    | af4. ~ af8 \acciaccatura bf16 \glissando c8 ef
    | bf4. ~ bf8 c d

    | ef4. ~ ef8 f g
    | c,4. ~ c8 f, g
    | af4. ~ af8 g' af
    | bf8. bf8 f16 bf8. bf8 f16
    | bf8. bf8 f16 bf8 c d

    | ef2. ~
    | ef2.

    \mark \markup \box \bold \tiny CHORUS

    | df,8. df8 af16 df8 f, af
    | df8. df8 af16 df8 f, df'
    | bf8. bf8 f16 bf8 f f'
    | bf,8. bf8 f16 bf8 f af

    | df8 -> af16 c8 -> af16 bf8 -> af16 ( bf ) df8

    | ef4. ~ ef8 \acciaccatura f16 \glissando g8 bf
    | f'2.
    | ef,4. ~ ef8 \acciaccatura f16 \glissando g8 bf
    | af,8. g f4.

    \mark \markup \box \bold \tiny VERSE

    | ef'4. ~ ef8 \acciaccatura f16 \glissando g8 bf
    | f4. ~ f8 f, g
    | af4. ~ af8 \acciaccatura bf16 \glissando c8 ef
    | bf4. ~ bf8 c ef

    | \acciaccatura f16 \glissando g8. f ef f16 ( g8 ) 
    | c,4. ~ c8 d ef
    | af,4. ~ af8 g' af
    | bf8. bf8 f16 bf8. bf8 f16
    | bf8. bf8 f16 bf8 c d

    | ef2. ~
    | ef2.

    \mark \markup \box \bold \tiny CHORUS

    | df,8. df8 af16 df8 f, af
    | df8. df8 af16 df8 f, df'
    | bf8. bf8 f16 bf8 f f'
    | bf,8. bf8 f16 bf8 f af

    | df8 -> af16 c8 -> af16 bf8 -> af16 ( bf ) df8

    \mark \markup \box \bold \tiny VERSE

    | R2. * 4
    | R2. * 3
    | R2. * 3
    | r4. r4 <df' af' ef'>8 ~ \<

    \mark \markup \box \bold \tiny BRIDGE

    | <df af' ef'>2. ~
    | <df af' ef'>2. \! ~
    | <df af' ef'>4. ~ <df af' ef'>4 <bf g' d'>8 \< ~
    | <bf g' d'>2. ~
    | <bf g' d'>4. \! ~ <bf g' d'>4 <af df af'>8 \< ~

    | <af df af'>2. ~
    | <af df af'>4. \! ~ <af df af'>4 <f bf f'>8 \< ~
    | <f bf f'>2. ~
    | <f bf f'>2. \!

    | df8. af' df af
    | df,8. af' df c,
    | bf8. f' bf f

    | ef8. bf' ef, bf
    | ef8. bf' ef, bf

    | af4. f8 g af
    | r8 bf f' bf ( c ) f, \glissando
    | df'8. df c c
    | bf8. bf af af

    | bf,8. bf af af
    | g8. g f f \glissando
    | df''8 -> af16 c8 -> af16 bf8 -> af,16 ( bf ) df8

    | ef4. ~ ef8 \acciaccatura f16 \glissando g8 bf
    | f'2.
    | ef,4. ~ ef8 \acciaccatura f16 \glissando g8 bf
    | af,8. g f4. \glissando

    | af'4. ~ af8 g af
    | bf2.

    \bar "|."
}

\score {
    \new Staff \with {
        instrumentName = "Bass"
        \numericTimeSignature
    } {
        \compressMMRests
        \music
    }
}

