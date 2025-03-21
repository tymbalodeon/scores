\version "2.25.24"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Wade in to the River"
  subtitle = "Monday Appreciation Society"
  composer = "Mark Rybaltowski"
  arranger = "Ben Rosen, bass"
}

music = \relative c' {
  \key ef \major
  \time 4/4
  \clef "bass"

  | R1 * 4
  | R1 * 10

  | c4. d8 ~ d2
  | bf4. g8 ~ g af bf4
  | c4. d8 ~ d2
  | bf4. ef,8 ~ ef4 ef'

  | af,4. g8 ~ g2
  | f4. g8 ~ g af ( bf4 )
  | af4. g8 ~ g2
  | f4. g8 ~ g8 f ( ef ) bf

  | af'4. g8 ~ g2
  | f4. g8 ~ g af ( bf4 )
  | af4. g8 ~ g2
  | bf4. ef,8 ~ ef4 r

  | bf4 bf8 bf ~ bf bf bf g' (
  | af4 ) af g f
  | bf,4 bf8 bf ~ bf bf bf g (
  | af4 ) af g f

  | bf4 bf8 bf ~ bf bf bf g' (
  | af4 ) af g f
  | bf,4 bf8 bf ~ bf bf bf g

  \time 2/4

  | af8 ( bf ) c4

  \time 4/4

  | ef2 bf'8 ( c4. )
  | g,8 af ( bf4 ) ~ bf8  ef bf4
  | c2 bf'8 ( c4 ) c,8
  | ef' d c4 ~ c8 bf g4

  | bf,2 ~ bf8 c ( d ) f
  | bf8 ( c4. ) ~ c8 f, ( g ) r
  | c8 ( d4. ) r4 f8 ( g ) ~
  | g4 f ef d

  | R1 * 3
  | r2. r8 ef,

  | af8 ef' r g ~ g ef bf ef, (
  | f8 ) f' r ef ~ ef c bf ef,
  | af8 ef' r g ~ g ef bf ef, (
  | f8 ) f' r g, ~ g af ( bf ) ef,

  | af8 ef' r g ~ g ef bf ef, (
  | f8 ) f' r ef ~ ef c bf g
  | af8 ef' r g ~ g ef bf ef, (
  | bf8 ) bf' r ef, ~ ef bf ef4

  | af,8 af af g g g g g
  | bf8 bf bf ef ef d c bf
  | af8 af af g g g g g
  | f8 f' f, ef' g -0 af \2 bf ( c )

  | af,8 af af g g g g g
  | bf8 bf bf ef ef d c bf
  | af8 af af g g f g af
  | bf8 bf' bf, ef \3 bf' ef ( d ) bf

  | af,8 c' af, g bf' g, g' g,
  | f af' f, g' f ef d c

  | bf4 bf8 bf ~ bf bf bf g' (
  | af4 ) af g f
  | bf,4 bf8 bf ~ bf bf bf g (
  | af4 ) af g f

  | bf4 bf8 bf ~ bf bf bf g' (
  | af4 ) af g f
  | bf,4 bf8 bf ~ bf bf bf g (
  | af4 ) af g f

  | bf4 bf8 bf ~ bf bf bf g' (
  | af8 ) ef af4 g8 f ef4
  | bf4 bf8 bf ~ bf bf bf g (
  | af4 ) af g f

  | bf4 bf8 bf ~ bf bf bf g' (
  | af8 ) bf c4 bf8 af g4
  | bf,4 bf8 bf ~ bf bf bf g

  \time 2/4

  | af8 ( bf ) c4

  \time 4/4

  | ef2 bf'8 ( c4. )
  | g,8 af ( bf4 ) ~ bf8  ef bf4
  | c2 bf'8 ( c4 ) c,8
  | ef' d c4 ~ c8 bf g4

  | bf,2 ~ bf8 c ( d ) f
  | bf8 ( c4. ) ~ c8 f, ( g ) r
  | c8 ( d4. ) r4 f8 ( g ) ~
  | g4 f ef8 d bf4


  \override TextSpanner.bound-details.left.text = \markup { \draw-line #'(0 . -1) }
  \override TextSpanner.bound-details.right.text = \markup { \draw-line #'(0 . -1) }

  | ef,2 ~ ef8 ef  \startTextSpan bf' g' ~
  | g4 bf, ~ bf8 ef, bf'4 \stopTextSpan
  | af,4 <af ef'>2. -> ~
  | <af ef'>2 af

  | c2 ~ \startTextSpan c8 c g' ef' ~
  | ef4 g, ~ g8 c, g'4 \stopTextSpan
  | bf,2 ~ bf8 f' d' bf' ~
  | bf4 af g8 f ef4

  | ef,2 ~ \startTextSpan ef8 ef bf' g' ~
  | g4 bf, ~ bf8 ef, bf'4 \stopTextSpan
  | af,4 <af ef'>2. -> ~
  | <af ef'>2 af

  | c2 ~ \startTextSpan c8 c g' ef' ~
  | ef4 \stopTextSpan d ~ d8 c g4
  | bf,2 ~ bf8 c ( d ) f
  | bf8 ( c4. ) ~ c8 f, ( g ) r

  | c8 ( d4. ) r4 c'8 ^\markup \tiny "C" ( d ) ~
  | d4 c bf g

  | af1 ~
  | af1

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
