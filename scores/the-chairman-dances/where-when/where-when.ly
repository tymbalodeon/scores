\version "2.25.5"

\include "helpers/settings.ily"
\include "helpers/bar-numbers/left-bar-numbers.ily"

\header {
  title = "Where/When"
  composer = "Eric Krewson (The Chairman Dances)"
  arranger = "Ben Rosen, bass"
}

verseOne = \relative fs {
  \sectionLabel "Verse"

  | R1 * 3 |
  | r2 r4 r8 fs,16 ( gs )

  | b8. b16 fs fs8 b16 ~ b b8 b16 fs' fs, b bs
  | cs8. cs16 gs gs8 cs16 ~ cs ds8 e16 ~ e ds cs gs
  | ds'8. ds16 b b8 ds16 ~ ds fs8 gs16 ~ gs fs ds8
  | e,8 fs16 ( gs ) b ( cs ) ds e ~ e ds8 cs16 ~ cs b gs8
  | ds8. ds16 fs gs8 as16 ~ as b8 cs16 ~ cs ds e gs
  | fs8. fs16 fs8. fs16 ~ fs fs8 fs16 fs gs fs ( gs )
}

chorusOne = \relative b, {
  \sectionLabel "Chorus"

  | b8. b16 ds ds8 e16 ~ e es8 fs16 ~ fs gs b bs
  | cs,8. cs16 e e8 fs16 ~ fs gs8 b16 ~ b ds cs css
  | ds,8. ds16 ds fs8 gs16 ~ gs as8 b16 ~ b cs ds b
  | e,8 b16( cs) e ds cs fs ~ fs fs8 fs16 gs8 as8

  | b,8. b16 ds ds8 e16 ~ e es8 fs16 ~ fs ds b bs
  | cs8. ds16 e gs8 e16 ~ e ds8 cs16 ~ cs b gs gs
  | ds'8. ds16 ds fs8 gs16 ~ gs as8 b16 ~ b cs ds b
  | e,8 b16( cs) e ds cs fs ~ fs fs8 fs16 gs8 as8

  | R1 * 2
}

chorusTwo = \relative b, {
  \sectionLabel "Chorus"

  | b8. b16 ds ds8 e16 ~ e es8 fs16 ~ fs gs b bs
  | cs,8. cs16 e e8 fs16 ~ fs gs8 b16 ~ b ds cs css
  | ds,8. ds16 ds fs8 gs16 ~ gs as8 b16 ~ b cs ds b
  | e,8 b16( cs) e ds cs fs ~ fs fs8 fs16 gs8 as8

  | b,8. b16 ds ds8 e16 ~ e es8 fs16 ~ fs ds b bs
  | cs8. ds16 e gs8 e16 ~ e ds8 cs16 ~ cs b gs gs
  | ds'8. ds16 ds fs8 gs16 ~ gs as8 b16 ~ b cs ds b
  | e,8 b16( cs) e ds cs fs ~ fs fs8 fs16 gs8 as8

  | R1 * 2
}

chorusThree = \relative b, {
  \sectionLabel "Chorus"

  | b8. b16 ds16 ds8 e16 ~ e16 es8 fs16 ~ fs16 gs16 b16 bs16
  | cs,8. cs16 e16 e8 fs16 ~ fs16 gs8 b16 ~ b16 ds16 cs16 css16
  | ds,8. ds16 ds16 fs8 gs16 ~ gs16 as8 b16 ~ b16 cs16 ds16 b16
  | e,8 b16( cs16) e16 ds16 cs16 fs16 ~ fs16 fs8 fs16 gs8 as8

  | b,8. b16 ds16 ds8 e16 ~ e16 es8 fs16 ~ fs16 ds16 b16 bs16
  | cs8. ds16 e16 gs16 b16 e16 ~ e16 ds8 cs16 ~ cs16 b16 gs16 gs16
  | ds8. ds16 ds16 fs8 gs16 ~ gs16 as8 b16 ~ b16 cs16 ds16 b16
  | e,8 b16( cs16) e16 ds16 cs16 fs16 ~ fs8 fs8 fs8 fs8

  | ds1
  | e1
  | fs1
  | gs2 as2

  | < b ds >1
  | < cs e >1
  | < ds fs >1
  | e2 fs2

  | R1 * 3
  | r2. r4\fermata
}

verseTwo = \relative c {
  \sectionLabel "Verse"

  | b8. b16 fs' fs8 b16 ~ b b8 fs16 b fs b, bs
  | cs8. cs16 gs' gs8 cs16 ~ cs cs8 b16 cs b gs gs,
  | ds'8. ds16 fs16 fs8 b16 ~ b16 ds8 cs16 ~ cs b gs gs,
  | e'8 b16 ( cs ) e ( fs ) gs b ~ b16 e8 ds16 ~ ds cs b gs,
  | ds'8. ds16 ds, fs8 gs16 ~ gs b8 b16 ~ b cs ds gs,
  | fs'4 fs r8. fs16 fs8 fs,16 gs
}

verseThree = \relative c {
  \sectionLabel "Verse"

  | b8. b16 fs16 fs8 b16 ~ b16 b8 fs16 b16 fs16 b16 bs16
  | cs8 gs16 cs16 ds16 e16 ds16 cs16 ~ cs16 b8 gs16 ~ gs16 fs16 e16 gs16
  | ds8 b16 cs16 ds16 e16 fs16 gs16 ~ gs16 b8 cs16 ~ cs16 b16 gs16 cs16
  | e16 gs16 e16 gs16 ds16 cs16 b16 gs16 as16 gs16 fs16 e16 ~ e16 ds16 b16 as16

  | ds8 ds16 ds16 fs16 gs16 as16 b16 ~ b16 cs8 ds16 ~ ds16 cs16 ds16 e16
  | fs8 fs8 r2.
}

bridge = \relative g {
  \sectionLabel "Bridge"

  | R1 * 3
  | r2. r8 fs8

  | b4. a8 ~ a2
  | gs4. fs8 ~ fs8 b8 fs4
  | b4. cs8 ~ cs2
  | e8 e4 b8 ~ b4 r16 ds16 fs16( gs16)
}

music = \relative c {
  \key b \major
  \clef "bass"

  \verseOne
  \chorusOne
  \verseTwo
  \chorusTwo
  \verseThree
  \bridge
  \chorusThree

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
