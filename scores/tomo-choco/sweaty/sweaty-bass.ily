\version "2.25.15"

sweatyBass = \relative c {
  \key af \major
  \clef "bass"

  | R1 * 8
  | R1 * 7
  | r4 g4 af bf

  | df2 af 
  | df4. df8 ( ef8 ) \xNote ef  bf4
  | ef2 bf
  | ef8 ( f4 ) ef8 ~ ef df bf4

  | df2 af 
  | df8 ef4 ( \glissando f8 ) ~ f af bf4
  | ef,4 bf8 ( c ) ef f ( \glissando g ) bf ~ 
  | bf c4 df8 ~ df ef ( f4 )

  | gf,,2. df'4 
  | gf f ef df
  | ef2 bf 
  | ef4 f gf af 

  | bf,2 f' 
  | bf4. \xNote bf8 bf,4 c
  | df2 af 
  | df4. df8 af' \xNote af df, d

  | ef4. ef8 g, ( \glissando af4 ) bf8 ~ 
  | bf c4 df8 ~ df ef ( \glissando f ) af
  | ef'8 ( f ) f f f f f af ( 
  | bf ) bf bf bf bf af f4

  | bf,,2 f' 
  | bf4. \xNote f8 bf,4 c
  | df2 af 
  | df4 f, ( \glissando af ) df

  | ef2 g, 
  | bf8 ( c4 ) ef8 ~ ef bf' ( \glissando c4 )
  | ef2. bf4 \glissando
  | af' ^\markup \tiny "A♭" g f ef

  | df c bf af 
  | bf f bf, c
  | df2 af 
  | df8 af'4 df8 ~ df af df,4

  | ef4. ef8 g ( \glissando af4 )  bf8 ~ 
  | bf \acciaccatura bf16 \glissando c4 bf8 ~ bf af ( g ) ef

  | df'8 ( ef4. ) ~ ef4 bf, 
  | f'' ef df c
  | bf2 f 
  | bf,4 f' f, g

  | af1 
  | r4 df f af
  | g2 bf, 
  | ef4 g, af bf

  | df2 af' 
  | df4. af8 df,4 d
  | ef2 bf
  | ef8 ( f4 ) ef8 ~ ef df bf4

  | df2 af 
  | df8 ef4 ( \glissando f8 ) ~ f af bf \xNote bf
  | ef,4. ef8 bf' bf, ( \glissando c ) ( df ) 
  | ef' df4 c8 ~ c bf4 \xNote bf8

  | ef,8 ^\markup \italic "let ring" ef bf' ef, ~ ef ef bf' ef, ~
  | ef ef bf' ef, ~ ef ef bf' ef,
  | bf8 bf bf' bf, ~ bf bf bf' bf, ~ 
  | bf bf f' bf, ~ bf bf f' bf,

  | df8 df af' df, ~ df df af' af, ~ 
  | af af df' af, ~ af af df' af, (
  | g8 ) g bf' g, ~ g g bf' g, ~ 

  % TODO add gliss to rests
  | g bf ( c ) ef ~ ef f ( \glissando g4 )

  | R1 * 18

  | <ef bf'>2. bf4 
  | f'' ef df c
  | bf2 f 
  | bf, f'4 bf

  | df,2 af 
  | df4. ef8 ( f4 ) af
  | ef2 bf 
  | ef8 f4 ( \glissando g8 ) ~ g bf ( c4 )

  | <ef, bf'>2. 
  | bf4 f'' ef df c
  | bf2 f 
  | bf, f'4 bf

  | df,2 f, 
  | af4. df8 ( ef4 ) f8 bf,
  | af'8 ( bf4. ) ~ bf8 c, ( df ) af' 
  | g'8 ( af ) ( g ) ef ~ ef af, ( g4 )

  | ef8 ^\markup \italic "let ring" ef bf' ef, ~ ef ef bf' ef, ~ 
  | ef ef bf' ef, ~ ef ef bf' ef,
  | bf8 bf bf' bf, ~ bf bf bf' bf, ~ 
  | bf bf f' bf, ~ bf bf f' bf,

  | df8 df af' df, ~ df df af' af, ~ 
  | af af df' af, ~ af af df' af, (
  | g8 ) g bf' g, ~ g g bf' g, ~ 
  | g af ( bf ) c ~ c df ( ef ) \xNote af,

  | df2 ~ df4 df8 af 
  | \acciaccatura ef'16 \glissando f4. af8 ~ af af ( bf4 )
  | ef,2 ~ ef4. bf8 
  | \acciaccatura bf'16 \glissando c4. bf8 ~ bf g ( f4 )

  | df2. df4 
  | f,4. af8 ~ af4 df
  | g,2. g4 \glissando 
  | gf'2. df'4 \glissando

  | gf4 f ef df

  | ef,1

  \bar "|."
}
