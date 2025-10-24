\version "2.25.26"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
  title = "Hum on the Wire"
  subtitle = "Monday Appreciation Society"
  composer = "Mark Rybaltowski"
  arranger = "Ben Rosen, bass"
}

music = \relative c {
  \key g \major
  \time 4/4
  \clef "bass"


  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet

  | R1 * 4

  \mark \default

  | R1 * 6

  | \afterGrace d2 \glissando { \hideNotes g, \unHideNotes } r
  | R1

  \mark \default

  | g8 g g c ~ c g c4
  | e8 e e a, ~ a e' a4
  | g,8 g g c ~ c g c4
  | e8 e e a, ~ a e a4

  | g8 g g c ~ c g c4
  | e8 e e a, ~ a e' a4
  | g,8 g g c ~ c g c4
  | e8 g gs a ~ a a, a a

  % | g8 d' g c, ~ c2
  % | e8 g a a, ~ a2
  % | g8 d' g c, ~ c2
  % | e8 g gs a ~ a2

  % | g,8 d' g c, ~ c2
  % | e8 g a a, ~ a2
  % | g8 d' g c, ~ c2
  % | e8 g gs a ~ a a, a a

  \time 2/4
  | a8 a a e'

  \time 4/4
  | a a a g a g e e,

  \mark \default

  | c'4 c8 g c b a g ~
  | g8 b c d ~ d d ( e ) e,
  | c'4 c8 g c e fs g ~
  | g8 d g, fs ~ fs a' fs, ( e )

  | c'4 c8 g c b a g ~
  | g8 b c d ~ d a' ( b ) a,
  | c4 c8 g c e fs g ~
  | g8 a g fs ~ fs fs, fs fs

  \time 2/4
  | fs8 fs fs d'

  \time 4/4
  | fs8 fs fs d a' g fs g

  \mark \default

  % | g, b' g, c g' c, b' c,
  % | e, b'' e,, a a' a, b' ( g )
  % | g, b' g, c g' c, b' c,
  % | e, b'' e,, a' ( b ) a, b ( c )

  | g, b' g, c g' c, b' c,
  | e, b'' e,, a a' a, b' ( g )
  | g, b' g, c g' c, b' c,
  | e, b'' e,, a a' a, b' ( g )

  \mark \default

  | g, b' g, c g' c, b' c,
  | e, b'' e,, a a' a, b' ( g )
  | g, b' g, c g' c, b' c,
  | e, b'' e,, a a' a, b' ( g )

  | g, b' g, c g' c, b' c,
  | e, b'' e,, a a' a, b' ( g )
  | g, b' g, c g' c, b' d, (
  | e8 ) e, fs g a b c ( d )

  % | g8 g r c ~ c g c4
  % | e8 e r a, ~ a e' a r
  % | g,8 g r c ~ c g c4
  % | e8 g a b r a,4 e8

  % | g8 g r c ~ c g c4
  % | e8 e r a, ~ a e' a r
  % | g,8 g r c ~ c g c d (
  % | e8 ) e, fs g a b c ( d )

  \mark \default

  | g,8 g g c ~ c g c4
  % | e8 g a a, ~ a e a4
  | e8 e e a, ~ a e a4
  | g8 g g c ~ c g c4
  | e8 g gs a ~ a e a,4

  | g8 g g c ~ c g c4
  % | e8 g a a, ~ a e a4
  | e8 e e a, ~ a e a4
  | g8 g g c ~ c g c4
  | e8 g gs a ~ a a, a a

  \time 2/4
  | a a a e'

  \time 4/4
  | c' c c b c b a e

  \mark \default

  | c4 c8 g c b a g ~
  | g8 b c d ~ d d ( e ) e,
  | c'4 c8 g c e fs g ~
  | g8 d g, fs ~ fs a' fs, ( e )

  | c'4 c8 g c b a g ~
  | g8 b c d ~ d a' ( b ) a,
  | c4 c8 g c e fs g ~
  | g8 a g d ~ d d a' ( b )

  % | c4 c8 b ( c ) b a g ~
  | c4 c8 g ( c ) b a g ~
  | g b c d ~ d d, a' ( b )
  % | c4 c8 b ( c ) b a g ~
  | c4 c8 g ( c ) b a g ~
  | g a, ( b ) d ~ d d ( e ) e,

  | c'4 c8 g c b a g ~
  | g8 b c d ~ d a' ( b ) a,
  | c4 c8 g c e fs g ~
  | g8 d g, fs ~ fs fs fs fs

  \time 2/4

  % | fs8 fs d' fs ~
  | fs fs fs fs -> ~

  \time 4/4

  \mark \default


  \repeat volta 2 {
    | fs g4 d'8 ~ d b4 g8
    % | \afterGrace fs2 \glissando { \hideNotes d \unHideNotes } r4 r8 g,
    | \afterGrace c2. \glissando { \hideNotes g \unHideNotes } r8 fs ~
    | fs g4 d'8 ~ d b4 g8

    \alternative {
      \volta 1 {
        | \afterGrace c2. \glissando { \hideNotes g \unHideNotes } r8 fs \laissezVibrer
      }

      \volta 2 {
        | <c' g'>1
      }
    }
    % | r2 r4 r8 g
    % | \afterGrace c1 \glissando { \hideNotes g \unHideNotes }
  }

  % | r2 r4 r8 g
  % | \afterGrace c1 \glissando { \hideNotes g \unHideNotes }
  % | r2 r4 r8 g
  % | <c g'>1

  \bar "|."
}

\score {
  #(set-global-staff-size 17)

  \new Staff \with {
    instrumentName = "Bass"
    \numericTimeSignature
  } {
    \compressMMRests
    \music
  }
}
