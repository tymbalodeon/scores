\version "2.25.17"

adventurousBass = \relative c {
  \key a \major
  \clef "bass"
  \time 2/2

  | R1 * 2
  | R1 * 4

  \mark \default

  \repeat volta 2 {
    | r8 a16 a r8 a16 a r8 a16 a r8 a16 a
    | r8 a16 a r8 a16 a r8 e16 e r8 e16 e
    | r8 a16 a r8 a16 a r8 a16 a r8 a16 a

    \alternative {
      \volta 1 {
        | r8 a16 a r8 a16 a r8 e16 e r8 e16 e
      }

      \volta 2 {
        | r8 a16 a r8 a16 a r8 a gs fs
      }
    }
  }

  | r8 e16 e r8 e16 e r8 e16 e r8 e16 e
  | r8 e16 e r8 e16 e r8 e fs gs

  | r8 a16 a r8 a16 a r8 a16 a r8 a16 a
  | r8 a16 a r8 a16 a r8 e16 e r8 e16 e
  | r8 a16 a r8 a16 a r8 a16 a r8 a16 a
  | r8 a16 a r8 a16 a r8 cs e fs

  | r8 a16 a a8 fs16 fs fs8 e16 e e8 a,16 a
  | a8 cs16 cs cs8 fs,16 fs fs8 e16 e r8 e --
  | r8 a16 a r8 a16 a r8 a16 a r8 a16 a
  | r8 a16 a r8 a16 a r8 a gs fs

  \mark \default

  | r8 e16 e r8 e16 e r8 e16 e r8 e16 e
  | r8 e a d -- r e -- r a, --
  | r8 e16 e r8 e16 e r8 e16 e r8 e16 e
  | r8 e a d -- r fs, -- r a --

  | R1 * 2

  \mark \default

  \repeat volta 2 {
    | r8 a' e' b' ^\markup \tiny B fs, cs' a' ^\markup \tiny A e,
    | cs'8 a' a, e' d cs b e, ->
    | r8 a e' b' fs, cs' a' e,
    | cs'8 a' a, e' d cs b a ->

    | r8 cs e cs' ^\markup \tiny C♯ fs,, cs' b' ^\markup \tiny B e,,
    | cs'8 a' ^\markup \tiny A a, e' d cs b e, ->
    | r8 a e' b' ^\markup \tiny B fs, cs' a' ^\markup \tiny A e,
    | cs'8 a' a, e' cs16 ( d ) cs8 b a

    \alternative {
      \volta 1 {
        | r8 e,16 e r8 e16 e r8 e16 e r8 e16 e
        | r8 e16 e r8 e16 e r8 e fs gs
      }

      \volta 2 {

        \mark \default

        | r8 e16 e r8 e16 e r8 e16 e r8 e16 e
      }
    }
  }

  | r8 e a d -- r e -- r a, --
  | r8 e16 e r8 e16 e r8 e16 e r8 e16 e
  | r8 e a d -- r fs, -- r a --

  | r8 e16 e r8 e16 e r8 e16 e r8 e16 e
  | r8 e a d -- r e -- r a, --
  | r8 e16 e r8 e16 e r8 e16 e r8 e16 e
  | r8 e a d -- r fs, -- r e -> ~

  | e1 ~
  | e1

  | R1 * 2

  \mark \default

  | R1 * 7
  | r2 r8 e16 e r8 e16 e

  | r8 a16 a r8 a16 a r8 a16 a r8 a16 a
  | r8 a16 a r8 a16 a r8 e16 e r8 e16 e
  | r8 a16 a r8 a16 a r8 a16 a r8 a16 a
  | r8 a16 a r8 a16 a r8 cs e fs

  | r8 a16 a a8 fs16 fs fs8 e16 e e8 a,16 a
  | a8 cs16 cs cs8 fs,16 fs fs8 e16 e r8 e --
  | r8 a16 a r8 a16 a r8 a16 a r8 a16 a
  | r8 a16 a r8 a16 a r8 gs fs e

  \mark \default

  | R1 * 8

  \mark \default

  | R1 * 8 ^\markup \italic \tiny "[drums enter]"

  \mark \default

  \repeat volta 2 {
    | r8 e16 e r8 e16 e r8 e16 e r8 e16 e
    | r8 e16 e r8 e -- r e -- r e --
    | r8 e16 e r8 e16 e r8 e16 e r8 e16 e

    \alternative {
      \volta 1 {
        | r8 e16 e r8 e -- r e -- r e --
      }

      \volta 2 {
        | r8 e16 e r8 e -- r e -- r a -> -.
      }
    }
  }

  | R1 * 2

  \bar "|."
}
