\version "2.25.19"

theRealGivingUp = \relative c'' {
  \time 4/4

  | R1 * 3
  | r2 e4 fs

  | gs2 ~  gs4 b (
  | gs2 ) ~ gs8 r16 cs ( e -. ) r b8
  | gs2 ~ gs8 r16 cs ( e -. ) r b8
  | gs4 ( e8 ) b'8 ~ b4 a8. ( gs16 )

  | e1 ~
  | e1

  | R1 * 2
  | R1 * 5

  | R1 * 7
  | r2 e4 fs

  | gs2 ~ gs4 b (
  | gs2 ) ~ gs8 r16 cs ( e -. ) r b8

  | gs2 ~ gs8 r16 cs ( e -. ) r b8
  | gs4 ( e8 ) b'8 ~ b4 a8. ( gs16 )

  | e1 ~
  | e1

  | R1
  | r2 r16 e' b gs ( a gs8. )

  | R1 * 4
  | r 2 r16 cs gs fs e' b8. ~

  | b1
  | R1 * 2
  | r2 r8 gs,16 ( a gs ) e8 e16 ~

  | e1
  | R1 * 3

  \repeat volta 3 {
    | a'16 ^\markup \italic "3x" ( gs ) e e' a, ( gs ) e gs  a16 ( gs ) e e' a, ( gs ) e gs
    | a16 ( gs ) e e' a, ( gs ) e gs  a16 ( gs ) e e' a, ( gs ) e gs
  }

  \repeat unfold 2 {
    | a16 ( gs ) e e' a, ( gs ) e gs a16 ( gs ) e e' a, ( gs ) e gs
  }

  | gs1 ~
  | gs1

  | R1 * 2

  \repeat volta 4 {
    | e,2 ( a2 )
    | e2 a2

    | fs2 ( a2 )

    \alternative {
      \volta 2 {
        | fs2 ( a4 ) gs
      }

      \volta 4 {
        | fs2 e'4 fs
      }
    }
  }

  \repeat volta 4 {
    | gs2 ~ gs4 b
    | gs2  ~ gs8 r16 cs ( e -. ) r b8

    | gs2 ~ gs8 r16 cs ( e -. ) r b8

    \alternative {
      \volta 2 {
        | gs4 ( e8 ) b'8 ~ b4 cs
      }

      \volta 4 {
        | gs4 ( e8 ) b'8 ~ b4 a
      }
    }
  }

  \time 2/4

  | gs4 b

  \time 4/4

  | e,1 \fermata

  \bar "|."
}
