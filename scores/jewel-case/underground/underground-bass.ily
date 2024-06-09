\version "2.25.16"

undergroundBass = \relative g, {
  \clef "bass"
  \time 18/16

  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = \musicLength 8.

  | R16 * 18
  | r4. r8. r8. g b

  | c4. ~ c8. e,4. ~ e8.
  | a4. ~ a8. ~  a8. a g
  | f4. ~ f8. g4. ~ g8.
  | c4. ~ c8. ~ c8. g b

  | c4. ~ c8. e,4. ~ e8.
  | a4. ~ a8. ~ a8. a g
  | f4. ~ f8. g4. ~ g8.
  | c4. ~ c8. ~ c4. \appoggiatura f16 g8.

  | c,4. ~ c8. e,4. ~ e8.
  | a4. ~ a8. ~ a8. a g
  % | f4. g c4. ~ c8 g b
  % | c4. e, a4. ~ a8 a g
  % | f4. g c4. ~ c4 \appoggiatura f16 g8

  % | c,4. e, f4. ~ f8 c' cs
  % | d4 ~ \tuplet 3/2 { d8 a16 } d8 e fs g4 ~ \tuplet 3/2 { g8 d16 } g8 fs e
  % | c4. e, f4. ~ f8 c' cs
  % | d4 ~ \tuplet 3/2 { d8 a16 } d8 ~ \tuplet 3/2 { d8 e16 } d8 a4 \appoggiatura d16 e8 a8 g e

  % | c4. e, f2.
}
