\version "2.25.21"
lower_staff = \relative c {
  \clef bass

  | R2.

  \time 4/4

  | r2 c \mf -- (

  \time 3/4

  | g2. -- )

  \time 4/4

  | r2 fs' -- (

  \time 3/4

  | cs2. -- )

  \time 4/4

  | R1

  \time 3/4

  | R2.

  \time 4/4

  | r2 d -- (

  \time 3/4

  | a2. -- )

  \time 4/4

  | R1

  \time 3/4

  | <ef af ef'>2. -- (

  \time 4/4

  | <bf ef bf'>2. -- ) r4

  \time 3/4

  | r4 <d, a' d>2 ~ -- (

  \time 4/4

  | <d a' d>4 -- <a e' a>2. -- )
  | r2. <fs' fs'>4 ~

  \time 7/8

  | <fs fs'>8 <cs cs'> ~ <cs cs'>2 <a' a'>8 ~
  | <a a'>8 <e e'> ~ <e e'>4. <ef ef'>4 ~
  | <ef ef'>8 <bf bf'> ~ <bf bf'>2

  \time 4/4

  | R1

  \time 3/4

  | R2. * 2

  \time 5/4

  | R1 * 5/4

  \time 3/4

  | R2. * 2

  \time 4/4

  | c'2 ~ ( c8 d ~ d16 bf8. ~

  \time 3/4

  | bf2. )

  \time 4/4

  \ottava #-1

  | af2 ~ ( af8 fs ~ fs16 e8. ~

  \time 3/4

  | e4. d )
  | c2. -> \ff

  \ottava #0

  | R2.
  | af''2. ->
  | r8. bf,16 -> ~ bf2
  | R2.

  | r8.
    \ottava #-1
    d,16 -> ~ d2
    \ottava #0

  | R2.

  \time 5/8

  | R1 * 5/8

  \time 3/4

  | R2.

  \time 5/8

  | R1 * 5/8

  \time 3/4

  | \ottava #-1
    c2.
    \ottava #0

  | R2. * 3

}
