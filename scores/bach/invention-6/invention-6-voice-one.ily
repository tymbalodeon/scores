\version "2.25.21"

inventionSixVoiceOne = \relative c'' {
  \repeat volta 2 {
    | r16 e8 ds d16 ~
    | d cs8 b a16 ~
    | a16 gs8 fs gs32 a
    | gs16 b32 a b16 gs32 fs gs16 e32 ds

    | e8 fs gs
    | a b cs
    | ds e16 ds cs b
    | e8 e, r

    | r16 gs'8 e cs16 ~
    | cs e32 ds e16 cs as fs ~
    | fs fs'8 ds b16 ~
    | b ds32 cs ds16 b gs e ~

    | e16 e'8 cs as16 ~
    | as gs'8 fs e16 ~
    | e ds8 cs b16
    | as16 e32 ds e16 as32 gs as16 b32 as

    | b16 ds, cs b' cs, as'
    | b8 r16 b ds fs
    | b8 r16 b fs ds
    | b fs ds b r8
  }

  \repeat volta 2 {
    | b8 cs ds
    | e fs gs
    | as b16 as gs fs
    | b8 b, r

    | r16 b''8 as a16 ~
    | a gs8 fs e16 ~
    | e ds8 cs ds32 e
    | ds16 fs32 e fs16 ds32 cs ds16 b32 as

    | b16 ds32 cs ds16 gs32 fss gs16 cs,32 b
    | cs16 e32 ds e16 as32 gs as16 ds,32 cs
    | ds16 gs32 fss gs16 b32 as b16 ds,32 css
    | ds16 as'32 gs as16 fss32 es fss16 ds32 css

    | ds16 a'!8 gs fs16 ~
    | fs e32 ds e16 cs32 bs cs16 e32 ds
    | e16 gs8 fs e16 ~
    | e ds32 cs ds16 b32 as b16 cs32 b

    | cs16 e8 ds cs16 ~
    | cs b32 as b16 gs32 fss gs16 a32 gs
    | a16 cs32 b cs16 a32 gs a16 e'32 ds
    | e16 fss,32 es fss16 as32 gs as16 b,32 as
    | b16 gs' e cs as fss'
    | gs ds b gs r8

    | e'8 fs gs
    | a b cs
    | ds e16 ds cs b
    | e8. b32 a b16 gs32 fs

    | gs16 e'8 ds d16 ~
    | d cs8 b a16 ~
    | a gs8 fs gs32 a
    | gs16 b32 a b16 gs32 fs gs16 e32 ds

    | e8 fs a
    | b ds fs
    | ds, e gs
    | a cs e

    | cs, fs a
    | b cs ds
    | e cs a
    | fs'4. ~

    | fs16 e ds cs b a
    | gs16 e32 ds e16 gs32 fs gs16 b32 a
    | b16 gs32 fs gs16 b32 a b16 e32 ds
    | e16 b gs e r8
  }
}
