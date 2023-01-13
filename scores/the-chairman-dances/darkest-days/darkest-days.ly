\version "2.24.0"

\include "settings.ily"

\header {
  title = "Darkest Days"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

music = \relative df {
  \key af \major
  \time 4/4
  \clef "bass"

  \compressMMRests {
    R1 * 11 |
  }

  r2 r4 r8 \grace { df8 ( } ef8 ) |
  af2. bf,8 c8 |
  df2. ~ df8 \grace { df8 ( } ef8 )   |
  af2. c,4 |
  df2. ~ df8 \grace { df8 ( } ef8 )   |
  af2 ~ af8 af,8 bf8 c8 |
  df2. ~ df8 \grace { df8 ( } ef8 )   |
  af2. c,4 |
  df2 \acciaccatura { c'8 ( } df8 ) _\markup{ \bold\teeny {H} } c8 bf8
  af16 g16 |
  f4. g8 af4 ( bf4 )   |
  r4 f'2. |
  f,,4. g8 af4 af'4 ~ |
  <df, af'>1 |
  ef2. f4 |
  bf,2 af4. df16 d16 |
  ef2 ~ ef8 bf'8 ef,8 ( _\markup{ \bold\teeny {H} } f8 ) |
  bf,4. c8 af4. df16 d16 |
  ef4 ~ ef16 bf'8 af16 ~ af16 g8 f16 ~ f16 ef8 ( df16 ) _\markup{
    \bold\teeny {S} } |
  bf8. df16 ~ df16 ef16 (   f16 ) af16 ~ af8
  ef8 df8 c8 |
  ef8. bf'16 ~ bf16 bf,16 ( c16 ) _\markup{ \bold\teeny {H} } ef16 bf8
  bf'32 ( c16. ) _\markup{ \bold\teeny {H} } bf8 f8 |
  af8 af8 g8 ef8 df8 df8 c8 af8 |
  \time 2/4  ef'8 df8 :16 df16 ( ef16 ) _\markup{ \bold\teeny {H} } ef8
  :16 |
  \numericTimeSignature\time 4/4  af,2. :32 bf8 :16 c8 :16 |
  df2. :32 ef8 :16 f16 g16 |
  af4 ~ :16 af8 :16 af16 ef16 af,4 :16 bf8 :16 c8 :16 |
  df4 :16 df8 :16 df16 af'16 \acciaccatura { ef'8 ( } f8 ) :16
  _\markup{ \bold\teeny {H} } ef8 :16 df8 :16 c16 bf16 |
  af4 ~ :16 af8 :16 af16 ef16 af,4 :16 bf8 :16 c8 :16 |
  df2. :32 ef8 :16 f16 g16 |
  af4 ~ :16 af8 :16 af16 ef16 af,4 :16 bf8 :16 c8 :16 |
  df2 :16 df'8 :16 c8 :16 bf8 :16 af16 g16 |
  r8 r16 c16 ~ c4 r8 r16 ef16 ~ ef4 |
  r8 r16 f16 ~ f8. f16 ~ f4 af8 -> af8 -> |
  f,,16 -> f16 f16 f16 -> f8 :16 g8 :16 af8 :16 af16 af'16 -> af4 ~
  :16 |
  af2 df,16 <df af'>16 -> \downbow _\markup{ \small\italic {finger
                                                            strum} } <df af'>16 -> \downbow <df af'>16 -> \downbow <df
                                                                                                                    af'>16 -> \downbow <df af'>16 -> \downbow <df af'>16 -> \downbow
  <df af'>16 -> \downbow |
  af16 _\markup{ \teeny {*hold the chords so that the notes sustain as
                         notated below:} } _ "*" af16 af16 c'16 af,16 af'16 af,16 af'16
  af,16 af16 af16 c'16 af,16 af16 bf16 c16 |
  df16 df16 df16 c'16 df,16 af'16 df,16 af'16 df,16 df16 df16 c'16 df,16
  af'16 af16 ( _\markup{ \bold\teeny {H} } bf16 ) |
  af,16 af16 af16 c'16 af,16 af'16 af,16 af'16 af,16 af16 af16 c'16
  af,16 af16 bf16 c16 |
  df16 df16 df16 c'16 df,16 af'16 df,16 af'16 df,16 df16 df16 c'16 df,16
  af'16 af16 ( _\markup{ \bold\teeny {H} } bf16 ) | \barNumberCheck
  #50
  af,16 af16 af16 c'16 af,16 af'16 af,16 af'16 af,16 af16 af16 c'16
  af,16 af16 bf16 c16 |
  df16 df16 df16 c'16 df,16 af'16 df,16 af'16 df8 :16 c8 :16 bf8 :16
  af16 g16 |
  r8 r16 c16 ~ c4 r8 r16 ef16 ~ ef4 |
  r8 r16 f16 ~ f8 g8 af8 -> bf8 -> c8 -> ef8 -> |
  f,,,16 -> f16 f16 f16 -> f8 :16 g8 :16 af8 :16 af16 af'16 -> af4 ~
  :16 |
  af2 df,16 df16 df16 df16 df16 ( ef16 ) _\markup{ \bold\teeny {H} }
  ef16 ef16 |
  r8 af,8 ~ -> af2. |
  s1*7 |
  r2 _ "rit." r4 af'4 ~ |
  af1 \bar "|."
}

PartPOneVoiceFive =  \relative c {
  \clef "bass" \numericTimeSignature\time 4/4 \key af \major
  \transposition c |
  s1*11 |
  R1*21 |
  \time 2/4  R2 |
  \numericTimeSignature\time 4/4  R1*12 |
  \clef "treble" r8. c16 ~ c4 ~ c8. c16 ~ c8 r8 |
  r8. c16 ~ c4 ~ c8. c16 ~ c8 r8 |
  r8. c16 ~ c4 ~ c8. c16 ~ c8 r8 |
  r8. c16 ~ c4 ~ c8. c16 ~ c8 r8 |
  r8. c16 ~ c4 ~ c8. c16 ~ c8 r8 |
  r8. c16 ~ c4 s2 |
  R1*5 |
  s1*7 |
  R1*2 \bar "|."
}

PartPOneVoiceNine =  \relative af, {
  \clef "bass" \numericTimeSignature\time 4/4 \key af \major
  \transposition c |
  s1*11 |
  R1*21 |
  \time 2/4  R2 |
  \numericTimeSignature\time 4/4  R1*12 |
  r4 r16 af8 af16 ~ af4. r8 |
  r4 r16 af8 af16 ~ af4 ~ af16 af16 af16 bf16 _\markup{ \bold\teeny
                                                        {H} } |
  r4 r16 af8 af16 ~ af4. r8 |
  r4 r16 af8 af16 ~ af4 ~ af16 af16 af16 bf16 _\markup{ \bold\teeny
                                                        {H} } |
  r4 r16 af8 af16 ~ af4. r8 |
  r4 r16 af8 af16 s2 |
  R1*5 |
  s1*7 |
  R1*2 \bar "|."
}

PartPOneVoiceTwo =  \relative df, {
  \clef "bass" \numericTimeSignature\time 4/4 \key af \major
  \transposition c |
  s1*16 s1*5 |
  df1 s1*6 s1*3 s1 |
  \time 2/4  s2 |
  \numericTimeSignature\time 4/4  s1*4 s1*4 |
  f16 f16 f8 f16 f16 g16 g16 af16 af16 af8 af16 af16 af16 ( _\markup{
    \bold\teeny {H} } bf16 ) |
  df,16 df16 df8 df16 df16 df8 df16 df16 df8 ( _\markup{ \bold\teeny
                                                         {S} } f16 ) f8 -> f16 -> s1 |
  df16 -> df16 df16 df16 -> df16 df16 df16 df16 s1. s1 s1*2 s1*2 |
  f16 f16 f8 f16 f16 g16 g16 af16 af16 af8 af16 af16 af16 ( _\markup{
    \bold\teeny {H} } bf16 ) |
  df,16 df16 df8 df16 df8 df16 (   f16 ) f8
  -> f16 ( ->   af16 ) af8 -> af16 -> s1 |
  df,16 -> df16 df16 df16 -> df16 df16 df16 af16 ( _\markup{
    \bold\teeny {S} } s1. |
  s1*7 |
  f4. g8 af2 |
  df1 \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
  } {
    \music
  }
}
