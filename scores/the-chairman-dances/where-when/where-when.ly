\version "2.25.6"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Where/When"
  composer = "Eric Krewson (The Chairman Dances)"
  arranger = "Ben Rosen, bass"
}

verseOne = \relative fs {
  | R1 * 3 |
  | r2 r4 r8 fs,16 ( gs )

  | b8. b16 fs fs8 b16 ~ b b8 b16 fs'8 b,16 bs
  | cs8. cs16 gs gs8 cs16 ~ cs ds8 e16 ~ e ds cs8
  | ds8. ds16 b b8 ds16 ~ ds fs8 gs16 ~ gs fs ds8
  | e,8 fs16 ( gs ) b ( cs ) ds e ~ e ds8 cs16 ~ cs b gs8

  | ds'8. ds16 fs, gs8 as16 ~ as b8 cs16 ~ cs ds e8
  | fs8. fs16 fs8. fs16 ~ fs fs8 fs16 fs8 fs,16 ( gs )
}

chorus = \relative b, {
  | b8. b16 ds ds8 e16 ~ e es8 fs16 ~ fs gs b ( cs )
  | cs,8. cs16 e e8 fs16 ~ fs gs8 b16 ~ b cs ds ( e )
  | ds,8. ds16 fs gs8 as16 ~ as b8 cs16 ~ cs ds e8
  | e,8 b16( cs) e ds cs fs ~ fs fs,8 fs'16 gs,8 as8

  | b8. b16 ds ds8 e16 ~ e es8 fs16 ~ fs gs b ( cs )
  | cs,8. ds16 ( e ) gs b e16 ~ e ds8 cs16 ~ cs b gs8
  | ds8. ds16 fs gs8 as16 ~ as b8 cs16 ~ cs ds e8
  | e,8 b16( cs) e ds cs fs ~ fs fs,8 fs'16 gs,8 as8

  | b4 r r2
  | R1
}

chorusFinal = \relative b, {
  | b8. b16 ds ds8 e16 ~ e es8 fs16 ~ fs gs b ( cs )
  | cs,8. cs16 e e8 fs16 ~ fs gs8 b16 ~ b cs ds ( e )
  | ds,8. ds16 fs gs8 as16 ~ as b8 cs16 ~ cs ds e8
  | e,8 b16( cs) e ds cs fs ~ fs fs,8 fs'16 gs,8 as8

  | b8. b16 ds ds8 e16 ~ e es8 fs16 ~ fs gs b ( cs )
  | cs,8. ds16 ( e ) gs b e16 ~ e ds8 cs16 ~ cs b gs8
  | ds8. ds16 fs gs8 as16 ~ as b8 cs16 ~ cs ds e8
  | e,16 e ds8 cs b fs' fs, gs as

  | ds8. ds16 ds8. ds16 ds as ( b ) ds ~ ds fs b8
  | e,,8. e16 e8. e16 e fs ( gs ) b ~ b cs ds8
  | fs,8. fs16 fs8. fs16 fs b fs' fs ~ fs b, fs8
  | gs8. gs16 gs8 fs16 gs as8. as16 as8 gs16 as

  | b8. b16 fs'8. fs16 fs b, fs' ds' ~ ds fs, b,8
  | cs8. cs16 gs'8. gs16 gs cs, gs' e' ~ e gs, cs,8
  | ds8. ds16 as'8. as16 as ds, as' fs' ~ fs as, ds,8
  | e,16 e fs8 gs b as b cs ds

  | R1 * 3
  | r2. r4\fermata
}

verseTwo = \relative c {
  | b8. b16 fs' fs8 b16 ~ b b8 fs16 b fs b, bs
  | cs8. cs16 gs' gs8 cs16 ~ cs cs8 b16 cs b gs8
  | ds8. ds16 fs16 gs8 b16 ~ b16 ds8 cs16 ~ cs b gs8
  | e8 b16 ( cs ) e ( fs ) gs b ~ b16 fs'8 e16 ~ e ds cs b

  | ds,8. ds16 fs, gs8 as16 ~ as b8 cs16 ~ cs ds8 e16
  | fs4 fs r8. fs16 fs8 fs,16 gs
}

verseThree = \relative b, {
  | b8. b16 fs'16 fs8 b16 ~ b16 b8 fs16 b16 fs16 b,16 bs16
  | cs8 gs' ds'16 e16 ds16 cs16 ~ cs16 b8 gs16 ~ gs16 fs16 e8
  | ds8 b16 cs16 ds16 e16 fs16 gs16 ~ gs16 b8 cs16 ~ cs16 ds b8
  | e,,8 fs16 gs b cs ds e ~ e fs8 gs16 ~ gs as b8

  | ds,8. ds16 fs, gs8 as16 ~ as b8 cs16 ~ cs ds8 e16
  | fs8 fs8 r2.
}

bridge = \relative g {
  | R1 * 3
  | r2. r8 fs8

  | b4. a8 ~ a2
  | gs4. fs8 ~ fs8 b,8 fs4
  | b4. cs8 ~ cs2
  | e,8 e4 b'8 ~ b4 r8 fs16 ( gs )
}

music = \relative c {
  \key b \major
  \clef "bass"

  \verseOne
  \chorus
  \verseTwo
  \chorus
  \verseThree
  \bridge
  \chorusFinal

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
