\version "2.25.5"

\include "settings.ily"

\header {
  title = "Where/When"
  composer = "The Chairman Dances (Eric Krewson)"
  arranger = "Ben Rosen, bass"
}

verseOne = \relative {
  \sectionLabel "Verse"

    | R1 * 3 |
    | r2 r4 r8 fs,16 ( gs16 )

    | b8. b16 fs16 fs8 b16 ~ b16 b8 b16 fs'16 fs,16 b16 bs16
    | cs8. cs16 gs16 gs8 cs16 ~ cs16 ds8 e16 ~ e16 ds16 cs16 gs16
    | ds'8. ds16 b16 b8 ds16 ~ ds16 fs8 gs16 ~ gs16 fs16 ds8
    | e,8 fs16 ( gs16 ) b16 ( cs16 ) ds16 e16 ~ e16 ds8 cs16 ~ cs16 b16 gs8
    | ds8. ds16 fs16 gs8 as16 ~ as16 b8 cs16 ~ cs16 ds16 e16 gs16
    | fs8. fs16 fs8. fs16 ~ fs16 fs8 fs16 fs16 gs16 fs16 ( gs16 )
}

chorusOne = \relative c {
  \sectionLabel "Chorus"

  | c8. c16 e, e8 f16 ~ f fs8 g16 ~ g a c cs
  | d8. d16 f, f8 g16 ~ g16 a8 c16 ~ c e, d' ds
  | e8. e16 e, g8 a16 ~ a b8 c16 ~ c d e c
  | f8 c16 ( d ) f e d g ~ g g,8 g'16 a,8 b

  | c8. c16 e, e8 f16 ~ f fs8 g16 ~ g e c' cs
  | d8. e16 f a8 f'16 ~ f e8 d16 ~ d c a a,
  | e8. e16 e g8 a16 ~ a b8 c16 ~ c d e c
  | f,8 c'16 ( d ) f e d g, ~ g g'8 g,16 a8 b

  | c4 c8. c16 ~ c c8 c16 c e, g ( a )
  | c4 c8. c16 ~ c c8 g16 c e, g ( a )
}

chorusTwo = \relative c {
  \sectionLabel "Chorus"

  | c8. c16 e, e8 f16 ~ f fs8 g16 ~ g a c cs
  | d8. d16 f, f8 g16 ~ g16 a8 c16 ~ c e, d' ds
  | e8. e16 e, g8 a16 ~ a b8 c16 ~ c d e c
  | f8 c16 ( d ) f e d g ~ g g,8 g'16 a,8 b

  | c8. c16 e, e8 f16 ~ f fs8 g16 ~ g e c' cs
  | d8. e16 f a c f16 ~ f e8 d16 ~ d c a a,
  | e8. e16 e g8 a16 ~ a b8 c16 ~ c d e c
  | f,8 c'16 ( d ) f e d g, ~ g g'8 g,16 a8 b

  | c4 c8. c16 ~ c c8 c16 c e, g ( a )
  | c4 c8. c16 ~ c c8 g16 c e, g ( a )
}

chorusThree = \relative c {
  \sectionLabel "Chorus"

  | c8. c16 e, e8 f16 ~ f fs8 g16 ~ g a c cs
  | d8. d16 f, f8 g16 ~ g16 a8 c16 ~ c e, d' ds
  | e8. e16 e, g8 a16 ~ a b8 c16 ~ c d e c
  | f8 c16 ( d ) f e d g ~ g g,8 g'16 a,8 b

  | c8. c16 e, e8 f16 ~ f fs8 g16 ~ g e c' cs
  | d8. e16 f a c f16 ~ f e8 d16 ~ d c a a,
  | e8. e16 e g8 a16 ~ a b8 c16 ~ c d e c
  | f,8 c'16 ( d ) f e d g, ~ g8 g' g, g'

  | e,1
  | f1
  | g1
  | a2 b

  | <c e'>1
  | <d f'>1
  | <e g'>1
  | f,2 g

  | R1 * 3
  | r2. r4 -\fermata
}

verseTwo = \relative c {
  \sectionLabel "Verse"

  | c8. c16 g' g8 c16 ~ c c8 g16 c g c, cs
  | d8. d16 a' a8 d16 ~ d d8 c16 d c a a,
  | e'8. e16 g16 g8 c16 ~ c16 e8 d16 ~ d c a a,
  | f'8 c16 ( d ) f ( g ) a c ~ c16 f8 e16 ~ e d c a,
  | e'8. e16 e, g8 a16 ~ a b8 c16 ~ c d e a,
  | g'4 g r8. g16 g8 g,16 a
}

verseThree = \relative c {
  \sectionLabel "Verse"

  | c8. c16 g' g8 c16 ~ c c8 g16 c g c, cs
  | d8 a'16 d, e' f e d ~ d c8 a16 ~ a g f a,
  | e'8 c16 d e f g a ~ a c8 d16 ~ d c a d,
  | f16 a, f'' a,, e'' d c a, b' a g f ~ f e c b
  | e,8 e16 e g a b c ~ c d8 e16 ~ e d e f
  | g8 g r2.
}

bridge = \relative g {
  \sectionLabel "Bridge"

  | R1 * 3
  | r2. r8 g

  | c4. bf8 ~ bf2
  | a4. g8 ~ g c, g4
  | c4. d8 ~ d2
  | f,8 f4 c'8 ~ c4 r16 e, g ( a )
}

% \absolute {
%   \sectionLabel "Verse" |
%   R1*3 |
%   r2 r4 r16 ds,16 fs,16( gs,16) |
%   b,8. b,16 fs,16 fs,8 b,16 ~ b,16 b,8 b,16 fs16 fs,16 b,16 bs,16 |
%   cs8. cs16 gs,16 gs,8 cs16 ~ cs16 ds8 e16 ~ e16 ds16 cs16 gs,16 |
%   ds,8. ds,16 b,16 b,8 ds16 ~ ds16 fs8 gs16 ~ gs16 fs16 ds16 ds,16 |
%   e,8 fs,16( gs,16) b,16( cs16) ds16 e16 ~ e16 ds8 cs16 ~ cs16 b,16 gs,8 |
%   ds,8. ds,16 fs,16 gs,8 as,16 ~ as,16 b,8 cs16 ~ cs16 ds16 e16 gs,16 |
%   fs8. fs16 fs8. fs16 ~ fs16 fs8 fs16 fs16 gs,16 fs,16( gs,16)
% }

% \absolute {
%   \sectionLabel "Chorus" |
%   b,8. b,16 ds,16 ds,8 e,16 ~ e,16 es,8 fs,16 ~ fs,16 gs,16 b,16 bs,16 |
%   cs8. cs16 e,16 e,8 fs,16 ~ fs,16 gs,8 b,16 ~ b,16 ds,16 cs16 css16 |
%   ds8. ds16 ds,16 fs,8 gs,16 ~ gs,16 as,8 b,16 ~ b,16 cs16 ds16 b,16 |
%   e8 b,16( cs16) e16 ds16 cs16 fs16 ~ fs16 fs,8 fs16 gs,8 as,8 |
%   b,8. b,16 ds,16 ds,8 e,16 ~ e,16 es,8 fs,16 ~ fs,16 ds,16 b,16 bs,16 |
%   cs8. ds16 e16 gs8 e'16 ~ e'16 ds'8 cs'16 ~ cs'16 b16 gs16 gs,16 |
%   ds,8. ds,16 ds,16 fs,8 gs,16 ~ gs,16 as,8 b,16 ~ b,16 cs16 ds16 b,16 |
%   e,8 b,16( cs16) e16 ds16 cs16 fs,16 ~ fs,16 fs8 fs,16 gs,8 as,8 |
%   b,4 b,8. b,16 ~ b,16 b,8 b,16 b,16 ds,16 fs,16( gs,16) |
%   b,4 b,8. b,16 ~ b,16 b,8 fs,16 b,16 ds,16 fs,16( gs,16)
% }

% \absolute {
%   \sectionLabel "Verse" |
%   b,8. b,16 fs16 fs8 b16 ~ b16 b8 fs16 b16 fs16 b,16 bs,16 |
%   cs8. cs16 gs16 gs8 cs'16 ~ cs'16 cs'8 b16 cs'16 b16 gs16 gs,16 |
%   ds8. ds16 fs16 fs8 b16 ~ b16 ds'8 cs'16 ~ cs'16 b16 gs16 gs,16 |
%   e8 b,16( cs16) e16( fs16) gs16 b16 ~ b16 e'8 ds'16 ~ ds'16 cs'16 b16 gs,16 |
%   ds8. ds16 ds,16 fs,8 gs,16 ~ gs,16 as,8 b,16 ~ b,16 cs16 ds16 gs,16 |
%   fs4 fs4 r8. fs16 fs8 fs,16 gs,16
% }

% \absolute {
%   \sectionLabel "Chorus" |
%   b,8. b,16 ds,16 ds,8 e,16 ~ e,16 es,8 fs,16 ~ fs,16 gs,16 b,16 bs,16 |
%   cs8. cs16 e,16 e,8 fs,16 ~ fs,16 gs,8 b,16 ~ b,16 ds,16 cs16 css16 |
%   ds8. ds16 ds,16 fs,8 gs,16 ~ gs,16 as,8 b,16 ~ b,16 cs16 ds16 b,16 |
%   e8 b,16( cs16) e16 ds16 cs16 fs16 ~ fs16 fs,8 fs16 gs,8 as,8 |
%   b,8. b,16 ds,16 ds,8 e,16 ~ e,16 es,8 fs,16 ~ fs,16 ds,16 b,16 bs,16 |
%   cs8. ds16 e16 gs16 b16 e'16 ~ e'16 ds'8 cs'16 ~ cs'16 b16 gs16 gs,16 |
%   ds,8. ds,16 ds,16 fs,8 gs,16 ~ gs,16 as,8 b,16 ~ b,16 cs16 ds16 b,16 |
%   e,8 b,16( cs16) e16 ds16 cs16 fs,16 ~ fs,16 fs8 fs,16 gs,8 as,8 |
%   b,4 b,8. b,16 ~ b,16 b,8 b,16 b,16 ds,16 fs,16( gs,16) |
%   b,4 b,8. b,16 ~ b,16 b,8 fs,16 b,16 ds,16 fs,16( gs,16)
% }

% \absolute {
%   \sectionLabel "Verse" |
%   b,8. b,16 fs16 fs8 b16 ~ b16 b8 fs16 b16 fs16 b,16 bs,16 |
%   cs8 gs16 cs16 ds'16 e'16 ds'16 cs'16 ~ cs'16 b8 gs16 ~ gs16 fs16 e16 gs,16 |
%   ds8 b,16 cs16 ds16 e16 fs16 gs16 ~ gs16 b8 cs'16 ~ cs'16 b16 gs16 cs16 |
%   e16 gs,16 e'16 gs,16 ds'16 cs'16 b16 gs,16 as16 gs16 fs16 e16 ~ e16 ds16 b,16 as,16 |
%   ds,8 ds,16 ds,16 fs,16 gs,16 as,16 b,16 ~ b,16 cs8 ds16 ~ ds16 cs16 ds16 e16 |
%   fs8 fs8 r2.
% }

% \absolute {
%   \sectionLabel "Bridge" |
%   R1*3 |
%   r2. r8 fs8 |
%   b4. a8 ~ a2 |
%   gs4. fs8 ~ fs8 b,8 fs,4 |
%   b,4. cs8 ~ cs2 |
%   e,8 e,4 b,8 ~ b,4 r16 ds,16 fs,16( gs,16)
% }

% \absolute {
%   \sectionLabel "Chorus" |
%   b,8. b,16 ds,16 ds,8 e,16 ~ e,16 es,8 fs,16 ~ fs,16 gs,16 b,16 bs,16 |
%   cs8. cs16 e,16 e,8 fs,16 ~ fs,16 gs,8 b,16 ~ b,16 ds,16 cs16 css16 |
%   ds8. ds16 ds,16 fs,8 gs,16 ~ gs,16 as,8 b,16 ~ b,16 cs16 ds16 b,16 |
%   e8 b,16( cs16) e16 ds16 cs16 fs16 ~ fs16 fs,8 fs16 gs,8 as,8 |
%   b,8. b,16 ds,16 ds,8 e,16 ~ e,16 es,8 fs,16 ~ fs,16 ds,16 b,16 bs,16 |
%   cs8. ds16 e16 gs16 b16 e'16 ~ e'16 ds'8 cs'16 ~ cs'16 b16 gs16 gs,16 |
%   ds,8. ds,16 ds,16 fs,8 gs,16 ~ gs,16 as,8 b,16 ~ b,16 cs16 ds16 b,16 |
%   e,8 b,16( cs16) e16 ds16 cs16 fs,16 ~ fs,8 fs8 fs,8 fs8 |
%   ds,1 |
%   e,1 |
%   fs,1 |
%   gs,2 as,2 |
%   < b, ds' >1 |
%   < cs e' >1 |
%   < ds fs' >1 |
%   e,2 fs,2 |
%   R1*3 |
%   r2. r4\fermata
% }

music = \relative c {
  \key c \major
  \clef "bass"

  % \transpose c b, {
    \verseOne
    \chorusOne
    \verseTwo
    \chorusTwo
    \verseThree
    \bridge
    \chorusThree
  % }

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
