\version "2.25.11"

\include "helpers/settings.ily"

\header {
  title = "Housekeeping"
  composer = "Eric Krewson (The Chairman Dances)"
  arranger = "Ben Rosen, bass"
}

music = \relative fs, {
  \key e \major
  \clef "bass"

  | R1 * 16

  | fs4. fs8 gs4. gs8
  | a4. a8 b4 bs
  | cs4. cs8 ds4 e
  | b4. b8 ds' b, b' bf

  | a4. \acciaccatura { gs8 } a e4. e8
  | a4. a8 a, ( e ) gs g
  | fs4. fs8 gs4 \acciaccatura { b'8 } cs4
  | b4 a gs e

  | cs4. ds8 ( e ) gs cs r
  | b4. fs8 b, b ( cs ) e
  | a,4. a8 cs4. cs8
  | e4. e8 a a gs r

  | fs4 cs4 a''4 ~ \tuplet 3/2 { a8 gs fs }
  | e4 \acciaccatura { a,8 } b4 e,, gs
  | a4 cs e gs
  | a4 b cs ds

  | e4 e, e,8 e' gs a
  | b4. b8 b4 fs,8 fss
  | gs4 gs bs ds
  | e4 ds cs b

  | fs4 cs' a' ~ \tuplet 3/2 { a8 gs fs }
  | e4 b e, gs
  | a4 cs e a
  | b4 b, ds'8 b, cs ds

  | e4 e, ~ e8 e' gs a
  | b4. b8 b fs b r
  | bs4 gs ds' fs
  | e4 ds cs b

  | fs4 cs a' ~ \tuplet 3/2 { a8 gs fs }
  | e4 b e, gs
  | a4 cs e a
  | b4 b, ds' e,,8 es

  | fs4. fs8 gs4. gs8
  | a4. a8 b4 bs
  | cs4. cs8 ds4 e
  | b4. b8 ds' b, b' bf

  | a4. \acciaccatura { gs8 } a e4. e8
  | a4. a8 a, e gs g
  | fs4. fs8 gs4 fs''8 gs
  | e8 fs b, cs a gs e ds

  | cs4. ds8 e gs cs ds
  | b4. fs8 b b, cs e
  | a,4. a8 cs4. cs8
  | e4. e8 a a gs r

  | fs4 cs a'' ~ \tuplet 3/2 { a8 gs fs }
  | e4 \acciaccatura { a,8 } b4 e,, gs
  | a4 cs e gs
  | a4 b cs ds

  | e4 e, e,8 e gs a
  | b4. b8 b4 fs8 fss
  | bs4 bs cs ds
  | e4 ds cs b

  | fs4 cs' a' ~ \tuplet 3/2 { a8 gs fs }
  | e4 b e, gs
  | a4 cs e a
  | b4 b, ds'8 b, cs ds

  | e4 e, ~ e8 e a as
  | b8 b ds ds fs fs fss f
  | gs8 gs as as bs bs gs gs
  | cs8 cs b4 a8 a gs4

  | fs4 cs as' ~ \tuplet 3/2 { as8 b as }
  | gs4 e e, gs
  | a4 cs e a
  | b4 b, ds'8 e, a gs

  | fs4. fs8 fs4. cs8
  | fs8 gs a4 gs8 fs e4
  | a,4. e'16 fs16 a8 a r a,
  | cs''8 b a4 gs8 fs e4

  | cs4. cs8 cs fs, cs4
  | e,4 e fs gs
  | a4 b cs e
  | a4 b cs ds8 e

  | fs,,4. fs8 a'' fs cs a
  | gs8 e fs b, cs e e,4
  | a4. e'16 fs16 a8 a r a,
  | ds'8 e cs4 b8 gs fs e

  | fs,4 cs' gs'8 as fs4
  | e,4 e fs gs
  | a4 b cs e
  | a4 b cs8 e, a gs

  | fs4. fs8 fs4. cs8
  | fs8 gs a4 gs8 fs e4
  | a,4. e'16 fs16 a8 a r a,
  | b''8 cs b a gs fs e ds

  | cs4 fs, as ~ \tuplet 3/2 { as8 b as }
  | gs4 e e, gs
  | a4 cs e gs
  | a4 b cs ds8 e

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
