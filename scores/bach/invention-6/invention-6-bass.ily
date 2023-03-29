voiceTwo = \relative c {
  \clef "bass"

  \repeat volta 2 {
    | e8 \3 -1 fs -4 gs \2 -1
    | a -2 b -4 cs \1 -1
    | ds -2 e16 -4 ds -2 cs -1 b \2 -4
    | e8 \1 -4 e, \3 -1 r

    | r16 e8 \3 -4 ds -2 d16 ~ -1
    | d cs8 -4 b -1 a16 \4 -4 ~
    | a16 gs8 -2 fs -1 gs32 -1 a -2
    | gs16 -1 b32 -4 a -1 b16 -4 gs'32 \2 -4 fs -1 gs16 -4 e32 \3 -2 ds -1

    | e8 -2 cs \4 -4 e \3 -1
    | fs -2 as \2 -1 cs -4
    | ds, \3 -2 b \4 -1 ds \3 -2
    | e -2 gs \2 -1 b -4

    | cs, \4 -2 cs -4 e \3 -1
    | fs -2 gs -4 as \2 -1
    | b -4 e, \3 -2 gs \2 -1
    | fs16 \3 -2 cs' \2 -4 as -1 cs -4 e, \3 -2 cs' \1 -1

    | ds,8 \3 -1 e -2 fs -4
    | b,16 \4 -1 b'32 \2 -4 as -2 b16 -4 fs32 \3 -4 e -1 fs16 -4 ds32 -4 cs -1
    | ds16 -4 fs32 -4 e -1 fs16 -4 ds32 -4 cs -1 ds16 -4 b32 \4 -2 as -1
    | b4 -2 b8 -2
  }

  \repeat volta 2 {
    | r16 b'8 as a16 ~
    | a gs8 fs e16 ~
    | e ds8 cs ds32 e
    | ds16 fs32 e fs16 ds32 cs ds16 b32 as

    | b8 cs ds
    | e fs gs
    | as b16 as gs fs
    | b8 b, r

    | gs' b ds
    | fss, as ds
    | gs, b ds
    | ds, ds' cs

    | bs cs ds
    | gs, cs b
    | as b cs
    | fs, b ds

    | fss, gs as
    | ds, gs b
    | cs, r cs' ~
    | cs as fss
    | gs cs, ds
    | gs, r16 gs gs' fs ~

    | fs16 e8 ds d16 ~
    | d cs8 b a16 ~
    | a gs8 fs gs32 a
    | gs16 b32 a b16 gs'32 fs gs16 e32 ds

    | e8 fs gs
    | a, b cs
    | ds e16 ds cs b
    | e8. b'32 a b16 gs32 fs

    | gs16 cs8 a fs16 ~
    | fs a32 gs a16 fs ds b ~
    | b b'8 gs e16 ~
    | e gs32 fs gs16 e cs a ~

    | a16 a'8 fs ds16 ~
    | ds cs'8 b a16 ~
    | a gs8 fs e16
    | ds16 a'32 gs a16 ds,32 cs ds16 gs32 fs

    | gs8 a b
    | e, r16 e' b gs
    | e b' gs e b gs
    | e4 e'8
  }
}
