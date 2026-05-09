\version "2.25.34"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
    title = "Homebuddy"
    subtitle = "Tomo Choco"
    composer = "Ashley Hartman"
    arranger = "Ben Rosen, bass"
}

music = \relative f {
    \clef bass
    \key f \minor

    | R1 * 8
    | R1 * 2

    \mark \markup \box \bold \tiny VERSE

    | f,8. af16 ~ af8 c8 ~ c bf ( c ) ef
    | f8. g16 ~ g8 c, ~ c2
    | bf'8. af16 ~ af8 g8 ~ g f c df
    | ef8. ef16 ~ ef8 ef ~ ef2

    | f,8. af16 ~ af8 c8 ~ c bf ( c ) ef
    | f8. g16 ~ g8 c, ~ c2

    | df8. af'16 ~ af8 df8 ~ df  af df,4
    | ef8. bf'16 ~ bf8 ef8 ~ ef2
    | f,8. c'16 ~ c8 af'8 ~ af c, f,4
    | f16 ( g8 ) ef'16 ~ ef8 g8 ~ g2
    | af,8. f'16 ~ f8 c'8 ~ c2

    | f,,8. af16 ~ af8 c8 ~ c bf, ( c ) ef
    | f8. g16 ~ g8 c, ~ c2
    | bf'8. af16 ~ af8 g8 ~ g f c df
    | ef8. df16 ~ df8 c ~ c2

    | f4. \glissando f'8 ~ f2
    | ef1
    | df,4. \glissando bf''8 ~ bf2
    | gf,,1

    % | f''16 -> f f f -> ~ f c16 f -> f f f -> ~ f c f -> c f8 ->
    | R1

    \mark \markup \box \bold \tiny CHORUS

    | r8. f16 -> ~ f8 \glissando f' ~ f16 <f c'>8. -> f4 ->
    | r8. f,16 -> ~ f8 \glissando df' ~ df16 <df af'>8. -> df4 ->
    | r8. f,16 -> ~ f8 \glissando bf ~ bf16 <bf f'>8. -> bf4 ->
    | ef8. ef'16 ~ ef8 df, -> ~ df c -> ~ c4

    | r8. f,16 -> ~ f8 \glissando f' ~ f16 <f c'>8. -> f4 ->
    | r8. f,16 -> ~ f8 \glissando df' ~ df16 <df af'>8. -> df4 ->
    | r8. f,16 -> ~ f8 \glissando bf ~ bf16 <bf f'>8. -> bf4 ->
    | ef8. ef'16 ~ ef8 af,, -> ~ af g -> ~ g4

    | R1 * 4

    \mark \markup \box \bold \tiny CHORUS

    | r8. f16 -> ~ f8 \glissando f' ~ f16 <f c'>8. -> f4 ->
    | r8. f,16 -> ~ f8 \glissando df' ~ df16 <df af'>8. -> df4 ->
    | r8. f,16 -> ~ f8 \glissando bf ~ bf16 <bf f'>8. -> bf4 ->
    | ef8. ef'16 ~ ef8 df, -> ~ df c -> ~ c4

    | r8. f,16 -> ~ f8 \glissando f' ~ f16 <f c'>8. -> f4 ->
    | r8. f,16 -> ~ f8 \glissando df' ~ df16 <df af'>8. -> df4 ->
    | r8. f,16 -> ~ f8 \glissando bf ~ bf16 <bf f'>8. -> bf4 ->
    | ef8. ef'16 ~ ef8 af,, -> ~ af g -> ~ g4

    | f''1
    | R1
    | R1 * 2

    | R1 * 4
    | R1 \fermata

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

