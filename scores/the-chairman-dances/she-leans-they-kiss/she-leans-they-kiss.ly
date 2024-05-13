\version "2.25.13"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "She Leans, They Kiss"
  subtitle = "The Chairman Dances"
  composer = "Eric Krewson"
  arranger = "Ben Rosen, bass"
}

music = \relative gs {
  \key b \major
  \clef "bass"

  | R1 * 4
  | R1 * 6
  | R1 * 5

  | r2 \acciaccatura fs16 gs8 fs ds e, ~

  | e4 e'8 e, b' ( cs ) fs ( gs ) ~
  | gs fs4 e8 ~ e e, fs4
  | cs'4 gs'8 cs, ds' ( e ) ds cs ~
  | cs b4 gs8 ~ gs fs e e,
  | fs4 fs' fs8 cs ( ds ) fs ~
  | fs fs4 fs8 ~ fs ds cs e, ~

  | e4 e'8 e, b' ( cs ) fs ( gs ) ~
  | gs \glissando ( b4 ) gs8 ~ gs fs e e,
  | cs'4 gs'8 cs, fs' e ds cs ~
  | cs b4 gs8 ~ gs cs, e,4
  | fs4 fs' fs8 cs ( ds ) fs ~
  | fs cs'4 b8 ~ b as fs e, ~

  | e4 e'8 e, b' ( cs ) fs gs ~
  | gs \glissando ( b4 ) cs8 ~ cs e \glissando ( fs4 )
  | cs,4 e'8 cs, ds' ( e ) ds e,,
  | a4 cs'8 a, e'' cs a a,

  | b'4 -. b2. ~
  | b2. r8 ds,
  | gs4 -. gs2. ~
  | gs2. r8 fs

  | b4 -. b2. ~
  | b2. r8 ds,
  | gs4 -. gs2. ~
  | gs2. r8 fs,

  | b4 -. b -. r2
  | R1

  | r8 b fs' b, r b fs' b,
  | r8 gs gs' gs, r gs gs' gs,
  | r8 b fs' b, r b fs' b,
  | r8 gs gs' gs, r gs gs' gs,
  | r8 b fs' b, r b fs' b,
  | r8 gs gs' gs, r gs gs' e, ~

  \repeat volta 2 {
    | e8 e' b' e, r e b' e,
    | r8 e b' e, r e b' e,
    | r8 cs cs' cs, r cs cs' cs,

    \alternative {
      \volta 1 {

        | r8 cs cs' cs, r cs cs' e,, \laissezVibrer
      }

      \volta 2 {

        | r8 cs' cs' cs, r cs cs' fs,, ~
      }
    }
  }

  | fs2. r8 gs ~
  | gs2. r8 as ~
  | as2. r8 cs ~
  | cs2 r8 fs -> fs -> fs ->

  | R1 * 6
  | R1 * 6
  | R1 * 6
  | R1 * 4

  | r2 \acciaccatura fs16 gs8 fs ds e, ~

  | e4 e'8 e, b' ( cs ) fs ( gs ) ~
  | gs fs4 e8 ~ e e, fs4
  | cs'4 gs'8 cs, ds' ( e ) ds cs ~
  | cs b4 gs8 ~ gs fs e e,
  | fs4 fs' fs8 cs ( ds ) fs ~
  | fs fs4 fs8 ~ fs ds cs e, ~

  | e4 e'8 e, b' ( cs ) fs ( gs ) ~
  | gs \glissando ( b4 ) gs8 ~ gs fs e e,
  | cs'4 gs'8 cs, fs' e ds cs ~
  | cs b4 gs8 ~ gs e, fs4

  | b4 -. b2. ~
  | b2. r8 ds
  | gs4 -. gs2. ~
  | gs2. r8 fs

  | b4 -. b2. ~
  | b2. r8 ds,
  | gs4 -. gs2. ~
  | gs2. r8 fs,

  | b4 -. <b fs'>2 -> <b fs'>4 -> ~
  | <b fs'>4 <b fs'>8 -> b fs' b, fs gs -.
  | r4 gs2 -> gs4 -> ~
  | gs gs8 -> fs ( gs ) cs fs, b -.

  | r4 <b fs'>2 -> <b fs'>4 -> ~
  | <b fs'>4 <b fs'>8 -> b fs' b, fs gs -.
  | r4 gs2 -> gs4 -> ~
  | gs gs8 -> fs ( gs ) cs fs, b ~

  | b4 fs'8 cs ( ds ) fs gs fs ~
  | fs8 cs'4 as8 ~ as fs cs gs ~
  | gs4 gs'8 cs, ( ds ) fs gs fs ~
  | fs gs4 fs8 ~ fs cs fs, b ~

  | b4 fs'8 cs ( ds ) fs gs fs ~
  | fs8 cs'4 as8 ~ as fs cs gs ~
  | gs4 gs'8 cs, ( ds ) fs gs fs ~
  | fs fs, fs' fs, ~ fs fs ( gs ) b ~

  | b4 fs'8 cs ( ds ) fs gs fs ~
  | fs8 fs'4 ds8 ~ ds b fs gs, ~
  | gs4 gs'8 cs, ( ds ) fs gs fs ~
  | fs gs4 fs8 ~ fs cs fs, b ~

  | b4 fs'8 cs ( ds ) fs gs fs ~
  | fs8 fs' e ds ~ ds b fs gs, ~
  | gs4 gs'8 cs, ( ds ) fs gs \acciaccatura b16 cs8
  | b8 ( as ) fs ds cs fs, ( gs ) b ~

  | b8 b fs' b, ~ b b fs' b, ~
  | b8 b fs' b, ~ b b fs' fs,
  | gs8 gs b' gs, ~ gs gs b' gs, ~
  | gs8 gs b' gs, ~ gs gs b' fs,

  | b8 b fs' b, ~ b b fs' b, ~
  | b8 b fs' b, ~ b b fs' fs,
  | gs8 gs b' gs, ~ gs gs b' gs, ~
  | gs8 gs b' gs, b ds' e,, fs ~

  | fs8 fs fs' fs, ~ fs fs fs' fs, ~
  | fs8 fs fs' fs, ~ fs fs fs' fs,
  | gs8 gs gs' gs, ~ gs gs gs' gs, ~
  | gs8 gs gs' gs, ~ gs gs gs' e,

  | fs8 fs fs' fs, ~ fs fs fs' fs, ~
  | fs8 fs fs' fs, ~ fs fs fs'4
  | gs8 ds gs as fs as gs, b' ~
  | b8 b4 gs,8 fs'' e ds e,, ~

  | e2. r8 e' ~
  | \afterGrace e2. \glissando { \hideNotes b8 \unHideNotes } r8 e, ~
  | e2. r8 e' ~
  | \afterGrace e2. \glissando { \hideNotes b8 \unHideNotes } r4

  | R1 * 4

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
