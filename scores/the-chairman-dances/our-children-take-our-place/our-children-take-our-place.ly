\version "2.25.11"

\include "helpers/settings.ily"

\header {
  title = "Our Children Take Our Place"
  composer = "Eric Krewson (The Chairman Dances)"
  arranger = "Ben Rosen, bass"
}

music = \relative c {
  \tempo 4 = 140
  \key g \major
  \clef "bass"

  \time 4/4

  \repeat unfold 3 {
    c4 c r2 |
  }
  g4 g d' d' |

  \repeat volta 2 {
    c4 c r8 fs g d ~ |
    d4 d r8 g, a c ~ |
    c4 c r8 fs g d ~ |
    d8 d, e g ~ g a d r |

    \alternative {
      \volta 1 {
        b4 e,, e8 a b d ~ |
        d8 e4 fs8 ~ fs a d r |
        g,4 g, r8 e fs g ~ |
        g8 a b c d e fs g |
      }

      \volta 2 {
        c4 a d,8 e g r |
      }
    }
  }

  \key cs \minor

  cs,4 cs4 r8 e'8 ds8 cs8 ~ |
  cs4. b8 r8 gs8 fs4 |
  e4 e,4 r4 a4 |
  a'8 gs4 e8 ~ e8 e,8 ds'4 |

  cs4 cs4 r8 e'8 ds8 cs8 |
  r8 b8 r8 gs8 r8 e8 fs4 |
  a,4 a4 r8 e'8 a,8 a'8 ~ |
  a8 a,4 gs'8 ~ gs8 a,8 b'8 cs8 |

  a4 a,4 r8 ds'8 e8 b8 ~ |
  b8 a,4 fs''8 ~ fs8 a,,8 b'8 cs8 |
  a,4 gs''4 cs,8 a,8 ds'8 b'8 ~ |
  b8 ds,8 a,8 e''8 cs'8 e,8 a,,4 |

  <b fs'>1 ~ |
  <b fs'>2 r8 gs8 gs8 cs8 ~ |
  cs8 cs8 cs8 cs8 cs8 gs'8 cs,8 cs'8 ~ |
  cs8 b8 gs8 fs8 e8 ds8 cs8 b8 ~ |

  b8 b8 b8 b8 b8 b'8 b,8 fs'8 ~ |
  fs8 fs4 fs,8 ~ fs8 fs'8 fs,8 gs8 |
  cs8 cs8 cs8 cs8 cs8 gs'8 cs,8 cs'8 ~ |
  cs8 b8 gs8 fs8 e8 ds8 cs8 b8 ~ |

  b8 b8 b8 b8 b8 b'8 b,8 fs'8 ~ |
  fs8 fs4 fs,8 ~ fs8 fs'8 fs,4 |
  gs4 gs4 r4 ds'8 gs8 ~ |
  gs4 gs4 r8 g,4.

  \repeat volta 2 {
    |
    \key e \minor c'4 c4 r8 fs8 g8 d8 ~ |
    d4 d4 r8 g,8 a8 c8 ~ |
    c4 c4 r8 fs8 g8 d8 ~ |
    d8 d,8 e8 g8 ~ g8 a8 d8 r8 }
  \alternative { {
    |
    b4 e,,4 e8 a8 b8 d8 ~ |
    d8 e4 fs8 ~ fs8 a8 d8 r8 |
    g,4 g,4 r8 e8 fs8 g8 ~ |
    g8 a8 b8 c8 d8 e8 fs8 g8 }
                 {
                   |
                   \key cs \minor cs,4 cs4 r8 e'8 ds8 cs8 ~ }
               } |
  cs4. b8 ~ b8 gs8 fs4 |
  e4 e,4 r4 a4 |
  a'8 gs4 e8 ~ e8 e,8 ds'4 |
  cs4 cs4 r8 e'8 ds8 cs8 |
  r8 b8 r8 gs8 r8 e8 fs4 |
  a,4 a4 r8 e'8 a,8 a'8 ~ |
  a8 a,4 gs'8 ~ gs8 a,8 b'8 cs8 |
  a4 a,4 r8 ds'8 e8 b8 ~ |
  b8 a,4 fs''8 ~ fs8 a,,8 b'8 cs8 |
  a,4 gs''4 cs,8 a,8 ds'8 b'8 ~ |
  b8 ds,8 a,8 e''8 cs'8 e,8 a,,4 |
  <b fs'>1 ~ |
  <b fs'>2 r8 gs8 gs8 cs8 ~ |
  cs8 cs8 cs8 cs8 cs8 gs'8 cs,8 cs'8 ~ |
  cs8 b8 gs8 fs8 e8 ds8 cs8 b8 ~ |
  b8 b8 b8 b8 b8 b'8 b,8 fs'8 ~ |
  fs8 fs4 fs,8 ~ fs8 fs'8 fs,8 gs8 |
  cs8 cs8 cs8 cs8 cs8 gs'8 cs,8 cs'8 ~ |
  cs8 b8 gs8 fs8 e8 ds8 cs8 b8 ~ |
  b8 b8 b8 b8 b8 b'8 b,8 fs'8 ~ |
  fs8 fs4 fs,8 ~ fs8 fs'8 fs,4 |
  gs4 gs4 r4 gs'8 a8 ~ |
  a4 a4 r8 d,8 e8 g8 ~
  \key e \minor g1 ~ |
  g2 ~ g8 d8 ds8 e8 ~ |
  e4 e,2 d''8 e8 ~ |
  e8 e8 d8 e8 a,8 b4 g,8 ~ \repeat volta 2 {
    |
    g4 _ "Play 6 times" g2 d'8 g8 ~ |
    g4 g4. d8 ds8 e8 ~ |
    e4 e,2 d''8 e8 ~ |
    e8 e8 d8 e8 a,8 b4 g,8 ~ }
  |
  g4 g2 d'8 g8 ~ |
  g4 g2 d8 g8 ~ |
  g4 g2 d8 g8 ~ |

  \time 3/2

  g4 g2 d8 g8 ~ g4 d8 e,8 ~ |

  \time 4/4

  e1 ~ |
  e2 ~ e8 <e b'' e gs>8 <e b'' e gs>8 <e b'' e gs>8 ~ ~ \repeat
  volta 2 {
    |
    <e b'' e gs>1 ~ ~ _ "Play 4 times" |
    <e b'' e gs>2 ~ ~ <e b'' e gs>8 <e b'' e gs>8 <e b'' e gs>8
    <e b'' e gs>8 ~ ~ }
  |
  <e b'' e gs>1 ~ ~ |
  <e b'' e gs>1 ~ ~ |
  <e b'' e gs>1 ~ ~ |
  <e b'' e gs>1

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
  } {
    \music
  }
}
