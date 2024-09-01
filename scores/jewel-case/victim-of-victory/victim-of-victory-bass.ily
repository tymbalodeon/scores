\version "2.25.17"

victimOfVictoryBass = \relative c {
  \key e \minor
  \time 4/4
  \clef "bass"

  | g8 g r4 g8 g r4
  | g8 g r4 g fs
  | e8 e r4 e8 e r4
  | e8 e r4 e fs

  \repeat volta 2 {
    | g8 g r4 g8 g r4
    | g8 g r4 g fs
    | e8 e r4 e8 e r4
    | e8 e r4

    \alternative {
      \volta 1 {
        e fs
      }

      \volta 2 {
        e8 g a b
      }
    }
  }

  | c4 r8 c ~ c4 r8 g
  | c4 r8 c ~ c4 b
  | a4 r8 a ~ a4 r8 e
  | a4 r8 a ~ a4 a

  | g8 g r4 g8 g r4
  | g8 g r4 g8 g r e (
  | g8 ) g r4 g8 g r4
  | g8 g r e ( g8 ) a b d

  | g8 g r d g g r d
  | g8 g r d g4 fs
  | e8 e r b e8 e r b
  | e8 e r b e4 fs

  | g8 g r d g g r d
  | g8 g r d g4 fs
  | e8 e r b e8 e r b
  | e8 e r b e fs g4

  | c,4 r8 c ~ c4 r8 g
  | c4 r8 c ~ c4 b
  | a4 r8 a ~ a4 r8 e
  | a4 r8 a ~ a8 b c4

  | f,4 r8 f ~ f4 r4
  | f4 r8 f ~ f4 r4

  | d'4 r8 d ~ d4 r8 a
  | d4 r8 d ~ d4 c
  | bf4 r8 bf ~ bf4 r8 f
  | bf4 r8 bf ~ bf4 b

  | c4 r8 c ~ c4 r8 g
  | c4 r8 c ~ c4 r16 e, f fs
  | g4 r8 g ~ g4 r8 d'
  | g8 d g d g e, f fs

  | g8 g r4 g8 g r4
  | g8 g r4 g fs
  | e8 e r4 e8 e r4
  | e8 e r4 e fs

  \repeat volta 2 {
    | g8 g r4 g8 g r4
    | g8 g r4 g fs
    | e8 e r4 e8 e r4
    | e8 e r4

    \alternative {
      \volta 1 {
        e fs
      }

      \volta 2 {
        e8 fs g gs
      }
    }
  }

  | a4 r8 a ~ a4 r
  | e4 r8 e ~ e4 r
  | c'4 r8 c ~ c4 r
  | f,4 r8 f ~ f4 r
  | f'8 f e4 d c8 b

  | a4 r8 a ~ a4 r
  | e4 r8 e ~ e4 r
  | c'4 r8 c ~ c4 r
  | f,4 r8 f ~ f4 r8 e
  | f8 f g g a a b c

  | a4 r8 a ~ a4 r
  | e4 r8 e ~ e4 r
  | c'4 r8 c ~ c4 r
  | f4 r8 f ~ f4 r8 c
  | f8 f f f f c f g,

  | c4 r8 c ~ c4 r8 g
  | c4 r8 c ~ c4 b
  | a4 r8 a ~ a4 r8 e
  | b''8 ( c ) b a ~ a e a,4

  | f1 ~
  | f1

  \bar "|."
}
