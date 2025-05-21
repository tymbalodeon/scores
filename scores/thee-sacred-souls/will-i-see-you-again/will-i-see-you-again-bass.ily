\version "2.25.26"

willISeeYouAgain = \relative c {
  \key c \major
  \clef "bass"

  | R1 * 4

  | d16 e d c a8 d ~ d2
  | d16 e d c a8 d ~ d4. d16 ds
  | e4. b8 ~ b4. d?8
  | e2 r

  \mark \default

  \repeat volta 3 {
    | d8. a'16 \acciaccatura c d8 \acciaccatura c16 d8 ~ d4 d16 c a f
    | d8. a'16 \acciaccatura c d8 \acciaccatura c16 d8 ~ d8 a d, ds
    | e8. b'16 \acciaccatura d e8 \acciaccatura d16 e8 ~ e4 e16 d b g
    | e8. b'16 \acciaccatura d e8 \acciaccatura d16 e8

    \alternative {
      \volta 1 { e16 b e,8 e'16 b e,8 }
      \volta 2 { \acciaccatura a16 b8 \acciaccatura a16 b8 e, ef }
      \volta 3 { e'16 b e,8 e'16 b e,8 }
    }
  }

  \mark \default

  \repeat volta 2 {
    | d16 e d c a8 d ~ d2
    | d16 e d c a8 d ~ d4. d16 ds
    | e4. b8 ~ b4. d?8

    \alternative {
      \volta 1 { | e4. bf8 ~ bf4 ef8 bf }
      \volta 2 { | e2 r }
    }
  }

  \mark \default

  | d8. a'16 \acciaccatura c d8 \acciaccatura c16 d8 ~ d4 d16 c a f
  | d8. a'16 \acciaccatura c d8 \acciaccatura c16 d8 ~ d8 a d, ds
  | e8. b'16 \acciaccatura d e8 \acciaccatura d16 e8 ~ e4 e16 d b g
  | e8. b'16 \acciaccatura d e8 \acciaccatura d16 e8 \acciaccatura a,16 b8 \acciaccatura a16 b8 e, ef

  | d8. a'16 \acciaccatura c d8 \acciaccatura c16 d8 ~ d4 \acciaccatura g,16 a8 \acciaccatura g16 a8
  | d,8. a'16 \acciaccatura c d8 \acciaccatura c16 d8 ~ d8 g,16 gs a c a g
  | e8. b'16 \acciaccatura d e8 \acciaccatura d16 e8 ~ e4 e16 d b g
  | e8. b'16 \acciaccatura d e8 \acciaccatura d16 e8 e16 b e,8 e'16 b e,8

  | d8. a'16 \acciaccatura c d8 \acciaccatura c16 d8 ~ d4 d16 c a f
  | d8. a'16 \acciaccatura c d8 \acciaccatura c16 d8 ~ d8 a d, ds
  | e8. b'16 \acciaccatura d e8 \acciaccatura d16 e8 ~ e4 e16 d b g
  | e8. b'16 \acciaccatura d e8 \acciaccatura d16 e8 \acciaccatura a,16 b8 \acciaccatura a16 b8 e, ef

  \mark \default

  \repeat volta 2 {
    | d16 e d c a8 d ~ d2
    | d16 e d c a8 d ~ d4. d16 ds
    | e4. b8 ~ b4. d?8

    \alternative {
      \volta 1 { | e4. bf8 ~ bf4 ef8 bf }
      \volta 2 { | e2 r }
    }
  }

  | c4. g8 c c8 ~ c16 g c8
  | d2 a'16 a g8 e d
  | c4. g8 c c8 \acciaccatura g'16 a8 g
  | d4. a8 d d a' d,

  | c4. g8 c c8 ~ c16 g c cs
  | d2 a'16 a g8 e d
  | c4. g8 c c8 \acciaccatura g'16 a8 g
  | d4. a'8 c d c16 a g8

  | e8 -. e -. e -. e -. e -. e -. f -. f -.
  | e8 -. r r2.

  \mark \default

  \repeat volta 4 {
    | d16 e d c a8 d ~ d2
    | d16 e d c a8 d ~ d4. d16 ds
    | e4. b8 ~ b4. d?8

    \alternative {
      \volta 1,3 { | e4. bf8 ~ bf4 ef8 bf }
      \volta 2,4 { | e4. b8 ~ b4 e8 b }
    }
  }

  \mark \default

  | d8 d d'16 a d,8 ~ d d r c16 cs
  | d8 d d'16 a d,8 ~ d d'16 a d,8 a'
  | e8 e e'16 b e,8 ~ e e r d16 ds
  | e8 e e'16 b e,8 ~ e b' e, ef

  | d8 d d'16 a d,8 ~ d d r a16 c
  | d8 d d'16 a d,8 ~ d a' d, d16 ds
  | e8 e e'16 b e,8 ~ e e r d16 ds
  | e8 e e'16 b e,8 ~ e b' e, ef

  \mark \default

  | d16 e d c a8 d ~ d2
  | d16 e d c a8 d ~ d4. d16 ds
  | e4. b8 ~ b4. d?8
  | e4. ^\markup rit. bf8 ~ bf4 ef8 a, \glissando

  | a'1 \fermata

  \bar "|."
}
