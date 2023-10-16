\version "2.25.9"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Meriwether Lewis On The Divide"
  subtitle = "Spelling Reform"
  composer = "Dan Wisniewski"
}

music = \relative c'' {
  \key fs \major
  \time 4/4

  | R1 * 4 ^\markup \italic "(guitar)"
  | R1 * 16 ^\markup \italic "(verse)"
  | R1 * 8 ^\markup \italic "(bass)"
  | R1 * 14
  | R1 * 4 ^\markup \italic "(band)"
  | R1 * 6 ^\markup \italic "(verse)"
  | r2 r4 r8 ds'16 as ~
  | as2 gs

  | fs1 ~
  | fs1
  | R1 * 6

  | R1 * 3
  | r8 as, b fs' ~ fs b,4 as8 ~
  | as b4 fs'8 ~ fs b,4 as8 ~

  | as1
  | R1 * 2
  | r8 as b fs' ~ fs b,4 gs'8 ~
  | gs cs,4 as'8 ~ as ( cs4 ) fs,8 ~
  | fs1

  | R1 * 3

  \tempo "slower"

  | R1 * 7
  | r2 r2 \fermata

  \tempo "a tempo"

  | R1 * 15
  | r2 r4 cs (

  | fs1 )
  | R1 * 3
  | r4 r8 \acciaccatura gs16 as8 ~ as2

  | R1 * 3
  | r4 r8 as ~ as4. fs'8 ~
  | fs4. cs8 ~ cs4 cs8 fs, ~

  | fs1 ~
  | fs4. fs16 ( cs ) ~ cs4 as8 gs ~
  | gs1 ~
  | gs1

  \repeat volta 2 {
    | <cs, fs cs' fs>4 ^\markup {
      \fret-diagram-verbose #'(
        (capo 4)
        (mute 6)
        (place-fret 3 6)
        (place-fret 2 7)
        (mute 1)
      )
    }
    r8 <cs as' b fs'>
    <cs as' b fs'>4 ^\markup {
      \fret-diagram-verbose #'(
        (capo 4)
        (mute 6)
        (place-fret 4 8)
        (place-fret 2 7)
        (mute 1)
      )
    } r

    \repeat unfold 3 {
      | <cs fs cs' fs>4  r8 <cs as' b fs'> <cs as' b fs'>4 r
    }

    | <cs gs' b fs'>4 ^\markup {
      \fret-diagram-verbose #'(
        (capo 4)
        (mute 6)
        (place-fret 4 6)
        (place-fret 2 7)
        (mute 1)
      )
    } r8 <cs gs' b fs'> <cs gs' b fs'>4 r
    | <cs gs' b fs'>4 r8 <cs gs' b fs'> \acciaccatura gs'16 as8 as gs fs
    | ds4 r8 ds <ds fs b fs'>4 ^\markup {
      \fret-diagram-verbose #'(
        (capo 4)
        (mute 6)
        (place-fret 5 6)
        (place-fret 2 7)
        (mute 1)
      )
    } r

    \alternative {
      \volta 1 {
        | <as fs' b fs'>4 ^\markup {
          \fret-diagram-verbose #'(
            (capo 4)
            (mute 6)
            (place-fret 5 6)
            (place-fret 2 7)
            (mute 1)
          )
        } r8 as <b fs' b fs'>4 r
      }

      \volta 2 {
        | <as b' fs'>4 r8 as b <fs' b fs'> <fs b fs'> \xNote <fs b fs'>
      }
    }
  }

  | as,4 r8 as b <fs' b fs'> <fs b fs'> \xNote <fs b fs'>
  | as,4 r8 as b <fs' b fs'> <fs b fs'> \xNote <fs b fs'>
  | <cs fs cs' fs>1

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = \markup {
      \center-column {
        "Guitar"
        \tiny \line { "Capo IV"  }
      }
    }
    \numericTimeSignature
  } {
    \compressMMRests
    \music
  }
}
