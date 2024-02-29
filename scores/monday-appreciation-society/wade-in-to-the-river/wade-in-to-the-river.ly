\version "2.25.13"

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
  | f4. g8 ~ g af bf4
  | af4. g8 ~ g2
  | f4. ef8 ~ ef4 r

  | af4. g8 ~ g2
  | f4. g8 ~ g af bf4
  | af4. g8 ~ g2
  | bf4. ef,8 ~ ef4 r

  | bf4 bf8 bf ~ bf bf bf g'
  | af4 af g f
  | bf,4 bf8 bf ~ bf bf bf g
  | af4 af g f

  | bf4 bf8 bf ~ bf bf bf g'
  | af4 af g f
  | bf,4 bf8 bf ~ bf bf bf g

  \time 2/4

  | af8 ( bf ) c4

  \time 4/4

  | ef2 bf'8 ( c4. )
  | g,8 af bf4 ~ bf8 ef bf4
  | c2 bf'8 ( c4 ) f,8
  | ef' d c4 ~ c8 bf g4

  | bf,2 ~ bf8 c ( d ) f
  | bf8 ( c )
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
