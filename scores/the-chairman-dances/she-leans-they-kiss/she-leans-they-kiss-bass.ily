\version "2.25.19"

sheLeansTheyKissBass = \relative gs {
  \key b \major
  \clef "bass"
  \time 2/4

  | R2 * 8
  | R2 * 6
  | R2 * 5

  | r4 \acciaccatura fs16 gs16 fs ds e, -> ~

  | e8 e'16 e, b' ( cs ) fs ( gs ) ~
  | gs fs8 e16 ~ e e, fs8
  | cs'8 gs'16 cs, ds' ( e ) ds cs ~
  | cs b8 gs16 ~ gs fs e e,
  | fs8 fs' fs16 cs ( ds ) fs ->
  | r16 fs -> r fs16 -> ~ fs ds cs e, -> ~

  | e8 e'16 e, b' ( cs ) fs ( gs ) ~
  | gs \glissando ( b8 ) gs16 ~ gs fs e e,
  | cs'8 gs'16 cs, fs' e ds cs ~
  | cs b8 gs16 ~ gs cs, e,8
  | fs8 fs' fs16 cs ( ds ) fs 
  | r16 cs'8 b16 ~ b as fs e, -> ~

  | e8 e'16 e, b' ( cs ) fs gs ~
  | gs \glissando ( b8 ) cs16 ~ cs e \glissando ( fs8 )
  | cs,8 e'16 cs, ds' ( e ) ds e,,
  | a8 cs'16 a, e'' cs a a,

  | b'8 -. b4. -- ~
  | b4. r16 ds,
  | gs8 -. gs4. -- ~
  | gs4. r16 fs

  | b8 -. b4. -- ~
  | b4. r16 ds,
  | gs8 -. gs4. -- ~
  | gs4. r16 fs,

  | b8 -. -- b -. -- r4
  | R1

  | r16 b fs' b, r b fs' b,
  | r16 gs gs' gs, r gs gs' gs,
  | r16 b fs' b, r b fs' b,
  | r16 gs gs' gs, r gs gs' gs,
  | r16 b fs' b, r b fs' b,
  | r16 gs gs' gs, r gs gs' e, -> ~

  \repeat volta 4 {
    | e16 e' b' e, r e b' e,
    | r16 e b' e, r e b' e,
    | r16 cs cs' cs, r cs cs' cs,

    \alternative {
      \volta 2 {

        | r16 cs cs' cs, r cs cs' e,, -> \laissezVibrer
      }

      \volta 4 {

        | r16 cs' cs' cs, r cs cs' fs,, -> ~
      }
    }
  }

  | fs4. r16 gs -> ~
  | gs4. r16 as -> ~
  | as4. r16 cs -> ~
  | cs4 r16 fs -- -> fs -- -> fs -- ->

  | R2 * 6
  | R2 * 6
  | R2 * 6
  | R2 * 4

  | r4 \acciaccatura fs16 gs16 fs ds e, -> ~

  | e8 e'16 e, b' ( cs ) fs ( gs ) ~
  | gs fs8 e16 ~ e e, fs8
  | cs'8 gs'16 cs, ds' ( e ) ds cs ~
  | cs b8 gs16 ~ gs fs e e,
  | fs8 fs' fs16 cs ( ds ) fs ->
  | r16 fs -> r fs16 -> ~ fs ds cs e, -> ~

  | e8 e'16 e, b' ( cs ) fs ( gs ) ~
  | gs \glissando ( b8 ) gs16 ~ gs fs e e,
  | cs'8 gs'16 cs, fs' e ds cs ~
  | cs b8 gs16 ~ gs e, fs8

  | b8 -. b4. -- ~
  | b4. r16 ds
  | gs8 -. gs4. -- ~
  | gs4. r16 fs

  | b8 -. b4. -- ~
  | b4. r16 ds,
  | gs8 -. gs4. -- ~
  | gs4. r16 fs,

  | b8 -. <b fs'>4 -> -- <b fs'>8 -> -- ~
  | <b fs'>8 <b fs'>16 -> b fs' b, fs gs -.
  | r8 gs4 -> -- gs8 -> -- ~
  | gs gs16 -> fs ( gs ) cs fs, b -.

  | r8 <b fs'>4 -> -- <b fs'>8 -> -- ~
  | <b fs'>8 <b fs'>16 -> b fs' b, fs gs -.
  | r8 gs4 -> -- gs8 -> -- ~
  | gs gs16 -> fs ( gs ) cs fs, b ~

  | b8 fs'16 cs ( ds ) fs gs fs ~
  | fs16 cs'8 as16 ~ as fs cs gs ~
  | gs8 gs'16 cs, ( ds ) fs gs fs ~
  | fs gs8 fs16 ~ fs cs fs, b ~

  | b8 fs'16 cs ( ds ) fs gs fs ~
  | fs16 cs'8 as16 ~ as fs cs gs ~
  | gs8 gs'16 cs, ( ds ) fs gs fs ~
  | fs fs, fs' fs, ~ fs fs ( gs ) b ~

  | b8 fs'16 cs ( ds ) fs gs fs ~
  | fs16 fs'8 ds16 ~ ds b fs gs, ~
  | gs8 gs'16 cs, ( ds ) fs gs fs ~
  | fs gs8 fs16 ~ fs cs fs, b ~

  | b8 fs'16 cs ( ds ) fs gs fs ~
  | fs16 fs' e ds ~ ds b fs gs, ~
  | gs8 gs'16 cs, ( ds ) fs gs \acciaccatura b16 cs16
  | b16 ( as ) fs ds cs fs, ( gs ) b ~

  \override TextSpanner.bound-details.left.text = \markup  "laissez vibrer"

  | b16 \startTextSpan b fs' b, ~ b b fs' b, ~
  | b16 b fs' b, ~ b b fs' fs,
  | gs16 gs b' gs, ~ gs gs b' gs, ~
  | gs16 gs b' gs, ~ gs gs b' fs,

  | b16 b fs' b, ~ b b fs' b, ~
  | b16 b fs' b, ~ b b fs' fs,
  | gs16 gs b' gs, ~ gs gs b' gs, ~
  | gs16 gs b' gs, b ds' e,, fs ~

  | fs16 fs fs' fs, ~ fs fs fs' fs, ~
  | fs16 fs fs' fs, ~ fs fs fs' fs,
  | gs16 gs gs' gs, ~ gs gs gs' gs, ~
  | gs16 gs gs' gs, ~ gs gs gs' e,

  | fs16 fs fs' fs, ~ fs fs fs' fs, ~
  | fs16 fs fs' fs, ~ fs fs fs'8
  | gs16 -> ds gs as -> fs as gs, b' -> ~
  | b16 b8 gs,16 \stopTextSpan fs'' e ds e,, -> ~

  | e4. r16 e' -> ~
  | \afterGrace e4. \glissando { \hideNotes b16 \unHideNotes } r16 e, -> ~
  | e4. r16 e' -> ~
  | \afterGrace e4. \glissando { \hideNotes b16 \unHideNotes } r8

  | R2 * 8

  \bar "|."
}
