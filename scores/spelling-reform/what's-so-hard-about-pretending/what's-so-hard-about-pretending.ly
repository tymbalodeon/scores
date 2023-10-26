\version "2.25.9"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "What's So Hard About Pretending"
  subtitle = "Spelling Reform"
  composer = "Dan Wisniewski"
}

music = \relative c'' {
  \key fs \major
  \time 2/2

  | R1 * 4 ^\markup \italic "(drums)"
  | R1 * 8 ^\markup \italic "(guitars)"

  | R1 * 7 ^\markup \italic "(verse)"
  | cs2 ds2
  | fs,1 ~
  | fs1

  | R1 * 7

  | R1 * 2

  | r2 fs'4 ( as ) ~
  | as2 cs,4 ( fs ) ~
  | fs1
  | R1

  | r2 fs4 ( as ) ~
  | as2 cs4 ( fs, ) ~
  | fs1
  | R1

  | R1 * 9
  | R1 * 17 ^\markup \italic "(verse)"
  | R1 * 2

  | r2 \ottava #1 fs'4 as ~
  | as2 cs,4 fs ~
  | fs1 \ottava #0
  | R1

  | r2 \ottava #1 fs4 as ~
  | as2 cs4 fs, ~
  | fs1 \ottava #0
  | R1

  | R1 * 5
  | r2 r4 as, ~
  | as1 ~
  | as1 ~
  | as1

  | R1 * 2
  | r2 r4 b,8 as
  | r8 gs r fs r gs r as ~

  | as4 fs ~ fs2 ~
  | fs1
  | R1
  | fs'8 es4 ds8 ~ ds cs4 as8 ~

  | as4 fs4 ~ fs2 ~
  | fs1
  | R1
  | r2 as4. ( b8 ) (

  | as1 )
  | R1 * 2
  | as'1

  | <b,, fs' b ds>4. ^\markup {
    \fret-diagram-verbose #'(
                              (capo 2)
                              (mute 6)
                              (place-fret 4 4)
                              (place-fret 3 4)
                              (place-fret 2 4)
                              )
  } <b fs' b ds>8 ~ <b fs' b ds>4 <b fs' b ds>
  | <b fs' b ds>4. <b fs' b ds>8 ~ <b fs' b ds>4 <b fs' b ds>
  | <gs cs'>4. ^\markup {
    \fret-diagram-verbose #'(
                              (capo 2)
                              (place-fret 6 4)
                              (mute 5)
                              (mute 4)
                              (place-fret 3 6)
                              (mute 2)
                              (mute 1)
                              )
  } <gs cs'>8 ~ <gs cs'>4 <gs cs'>
  | <gs as' cs>4. ^\markup {
    \fret-diagram-verbose #'(
                              (capo 2)
                              (place-fret 6 4)
                              (mute 5)
                              (place-fret 4 8)
                              (place-fret 3 6)
                              (mute 2)
                              (mute 1)
                              )
  } <gs as' cs>8 ~ <gs as' cs>4 <gs as' cs>
  | <as es' as cs es as>4. ^\markup {
    \fret-diagram-verbose #'(
                              (capo 2)
                              (place-fret 6 6)
                              (place-fret 5 6)
                              (place-fret 4 8)
                              (place-fret 3 8)
                              (place-fret 2 7)
                              (place-fret 1 6)
                              )
  } <as es' as cs es as>8 ~ <as es' as cs es as>4 <as es' as cs es as>
  | <b fs' b ds>4. <b fs' b ds>8 ~ <b fs' b ds>4 <b fs' b ds>
  | <fs cs' fs as cs fs>4. ^\markup {
    \fret-diagram-verbose #'(
                              (capo 2)
                              (place-fret 5 4)
                              (place-fret 4 4)
                              (place-fret 3 3)
                              )
  } <fs cs' fs as cs fs>8 ~ <fs cs' fs as cs fs>4 <fs cs' fs as cs fs>
  | <b fs' b ds>4. <b fs' b ds>8 ~ <b fs' b ds>4 <b fs' b ds>
  | <b fs' b ds>4. <b fs' b ds>8 ~ <b fs' b ds>4 <b fs' b ds>

  \repeat volta 2 {
    | <ds ds'>1 ~
    | <ds ds'>1
    | <as as'>1
    | <b b'>1
  }

  \repeat volta 4 {
    | fs'2 \parenthesize \repeatTie as4 fs ~
    | fs2 cs'4 fs, ~

    \alternative {
      \volta 1,2,3 {
        | fs2 as4 fs
        | cs' fs, ds' fs, \laissezVibrer
      }

      \volta 4 {

        | fs2 as
        | cs2 ~ cs4 as ~
      }
    }
  }

  | as1

  | R1 * 8

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = \markup {
      \center-column {
        "Guitar"
        \tiny \line { "Capo II"  }
      }
    }
    \numericTimeSignature
  } {
    \compressMMRests
    \music
  }
}
