\version "2.25.22"

ciggyBass = \relative c {
    \key af \major
    \time 4/4
    \clef "bass"

    | R1 * 4
    | R1 * 8

    | ef16 ( f ) f bf, ( c ) c c ef ( f ) c f g ( af ) g f8 \glissando
    | af,4 \glissando af' \glissando af,8 af4 r8

    | f''8. f16 ef8. ef16 df8. df16 c4
    | bf8 af4 f8 ~ f ef df16 c bf8
    | r4 af'4 \glissando af,8 af4 r8

    | r4. r16 c \glissando bf'8. f16 c'4
    | af4. ef8 gf' f ef df
    | c2. ef,4 \glissando

    | af,4. r8 af af4.
    | af4. r8 af af4.
    | df4. r16 af' df8 df4 af8 \glissando
    | df,4 ef ff \glissando ff,

    | af2 \glissando af'8 af4 ef8 \glissando
    | af,4. r16 c \glissando bf'8. f16 c'4
    | df,4. r16 af' df8 df4 df,8 \glissando
    | ff'4 \2 ef df8 c bf af

    | ef16 ( f ) f bf, ( c ) c c ef ( f ) c f g ( af ) g f8 \glissando
    | af,4 \glissando af' \glissando af,8 af4 r8

    | f''8. f16 ef8. ef16 df8. df16 c4
    | bf8 af4 f8 ~ f ef df16 c bf8
    | r4 af'4 \glissando af,8 af4 r8

    | r4. r16 c \glissando bf'8. f16 c'4
    | af4. ef8 gf' f ef df
    | c4 bf af ef \3 \glissando

    | af8 -. af -- af'16 ^\markup \tiny "A♭" ef8 ef,16 \4 af8 -. af -- af'16 ef8 ef,16
    | af8 -. af -- g'16 ef8 ef,16 af8 -. af -- g'16 ef8 ef,16
    | af8 -. af -- f'16 ef8 ef,16 af8 -. af -- f'16 ef8 af,16 \glissando
    | df,4 ef ff \glissando ff,

    | af'8 -. af -- af'16 ^\markup \tiny "A♭" ef8 ef,16 af8 -. af -- \glissando c'16 ^\markup \tiny "C" ef,8 ef,16
    | af8 -. af -- bf'16 ^\markup \tiny "B♭" ef,8 ef,16 af8 -. af -- af'16 ^\markup \tiny "A♭" ef8 ef,16
    | af8 -. af -- f'16 ef8 ef,16 af8 -. af --

        << {
            s4
            | ff'4 \1
        } \\ {
            f16 ef8 df,16 ~
            | df4
        } >>

        ef' df8 c bf af

    | ef16 ( f ) f af bf ( \glissando c ) c ef ( f ) g ( af ) g f ef c8 \glissando
    | af,4 \glissando af' \glissando af,8 af4 r8

    | f''8. f16 ef8. ef16 df8. df16 c4
    | bf8 af4 f8 ~ f ef df16 c bf8
    | r4 af'4 \glissando af,8 af4 r8

    | r4. r16 c \glissando bf'8. f16 c'4
    | af4. ef8 gf' f ef df
    | c2. ef,4 \glissando

    | af,4. r8 af8 af4 r8
    | af4. r8 af8 af4 r8
    | af4. ef''8 \acciaccatura bf'16 \glissando c8 ^\markup \tiny "C" bf ( \glissando af ) f
    | ef1

    \bar "|."
}
