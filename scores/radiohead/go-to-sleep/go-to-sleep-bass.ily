\version "2.25.28"

goToSleepBass = \relative c {
  % \key g \minor
  \clef bass

  \repeat volta 4 {
    \time 4/4

    | R1 ^\markup \box "Instrumental 4x"

    \time 3/4

    | R2.
    | R2.
  }

  \repeat volta 7 {
    \time 4/4

    | R1 ^\markup \box "Vocals 7x"

    \time 3/4

    | R2.
    | R2.
  }

  \repeat volta 10 {
    \time 4/4

    | R1 ^\markup \box "Drums 10x"

    \time 3/4

    | R2.
    | R2.
  }

  \time 4/4

  | R1 * 4

  | r8 g r g r g r bf
  | r8 bf r bf r bf r g
  | r8 g r g r g r bf
  | r8 bf r bf r bf r g

  | r8 g r e f g r bf
  | r8 bf r bf r bf r c
  | r8 c r c r c r d
  | r8 d d d d  c bf4
  
  \bar "|."
}
