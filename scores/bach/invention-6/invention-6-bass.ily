bass_fingerings = {
  \repeat volta 2 {
    | s8 \3 -1 s -4 s \2 -1
    | s -2 s -4 s \1 -1
    | s -2 s16 -4 s -2 s -1 s \2 -4
    | s8 \1 -4 s \3 -1 s

    | s16 s8 \3 -4 s -2 s16 -1
    | s s8 -4 s -1 s16 \4 -4
    | s16 s8 -2 s -1 s32 -1 s -2
    | s16 -1 s32 -4 s -1 s16 -4 s32 \2 -4 s -1 s16 -4 s32 \3 -2 s -1

    | s8 -2 s \4 -4 s \3 -1
    | s -2 s \2 -1 s -4
    | s \3 -2 s \4 -1 s \3 -2
    | s -2 s \2 -1 s -4

    | s \4 -2 s -4 s \3 -1
    | s -2 s -4 s \2 -1
    | s -4 s \3 -2 s \2 -1
    | s16 \3 -2 s \2 -4 s -1 s -4 s \3 -2 s \1 -1

    | s8 \3 -1 s -2 s -4
    | s16 \4 -1 s32 \2 -4 s -2 s16 -4 s32 \3 -4 s -1 s16 -4 s32 -4 s -1
    | s16 -4 s32 -4 s -1 s16 -4 s32 -4 s -1 s16 -4 s32 \4 -2 s -1
    | s4 -2 s8 -2
  }

  \repeat volta 2 {
    | s16 s8 \2 -4 s -2 s16 -1
    | s s8 -4 s -1 s16 \3 -4
    | s s8 -2 s -1 s32 -1 s -2
    | s16 -1 s32 -4 s -1 s16 -4 s32 -4 s -1 s16 -4 s32 \4 -2 s -1

    | s8 -2 s -4 s \3 -1
    | s -2 s -4 s \2 -1
    | s -2 s16 -4 s -2 s -1 s \3 -4
    | s8 \2 -4 s \4 -1 s

    | s \3 -4 s \2 -2 s \1 -1
    | s \3 -3 s \2 -1 s \1 -1
    | s \3 -4 s \2 -2 s \1 -1
    | s \4 -2 s \2 -4 s -2

    | s -1 s -2 s -4
    | s \3 -1 s \2 -4 s -1
    | s -1 s -2 s -4
    | s \3 -1 s \2 -2 s \1 -1

    | s \3 -2 s -4 s \2 -1
    | s \3 -4 s \2 -4 s \1 -1
    | s \3 -2 s s \1 -4
    | s s -1 s \2 -2
    | s -4 s \3 -1 s -4
    | s \4 -1 s16 s -1 s \2 -4 s -1

    | s16 s8 \3 -4 s -2 s16 -1
    | s s8 -4 s -1 s16 \4 -4
    | s s8 -2 s -1 s32 -1 s -2
    | s16 -1 s32 -4 s -1 s16 -4 s32 \2 -4 s -1 s16 -4 s32 \3 -2 s -1

    | s8 -2 s -4 s \2 -1
    | s \4 -2 s -4 s \3 -1
    | s -2 s16 -4 s -2 s -1 s \4 -4
    | s8. \3 -4 s32 \2 -4 s -1 s16 -4 s32 -4 s -1

    | s16 -4 s8 \1 -1 s \2 -2 s16 \3 -4
    | s s32 \2 -2 s -1 s16 -2 s \3 -4 s -1 s \4 -2
    | s s8 \2 -4 s -1 s16 \3 -2
    | s s32 \2 -4 s -1 s16 -4 s \3 -4 s -1 s \4 -2

    | s16 s8 \2 -4 s -1 s16 \3 -2
    | s s8 \1 -1 s \2 -4 s16 -2
    | s s8 -1 s \3 -4 s16 -1
    | s16 -2 s32 \2 -4 s -2 s16 -4 s32 \3 -4 s -1 s16 -4 s32 \2 -4 s -1

    | s8 -4 s -1 s -4
    | s \3 -1 s16 s \1 -4 s \2 -4 s -1
    | s \3 -2 s \2 -4 s -1 s \3 -2 s -1 s \4 -4
    | s4 -0 s8 \3 -1
  }
}

voice_two = \relative c {
  \clef "bass"

  \repeat volta 2 {
    | e8 fs gs
    | a b cs
    | ds e16 ds cs b
    | e8 e, r

    | r16 e8 ds d16 ~
    | d cs8 b a16 ~
    | a16 gs8 fs gs32 a
    | gs16 b32 a b16 gs'32 fs gs16 e32 ds

    | e8 cs e
    | fs as cs
    | ds, b ds
    | e gs b

    | cs, cs e
    | fs gs as
    | b e, gs
    | fs16 cs' as cs e, cs'

    | ds,8 e fs
    | b,16 b'32 as b16 fs32 e fs16 ds32 cs
    | ds16 fs32 e fs16 ds32 cs ds16 b32 as
    | b4 b8
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
