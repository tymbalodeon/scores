\version "2.25.6"

\include "helpers/settings.ily"

\header {
  title = "Holy Man"
  composer = "Rebecca Seatle"
  arranger = "Ben Rosen, bass"
}

g_riff = \relative g, {
  g4 r8 b'16 ( c ) ( b ) ( g ) d ( fs ) g4 |
}

c_riff = \relative c {
  c4 r8 b'16 ( c ) ( b ) ( g ) d ( fs ) g4 |
}

a_riff= \relative a, {
  a4 r8 b'16 ( c ) ( b ) ( g ) d ( fs ) g4 |
  a,4 r8 b'16 ( c ) ( b ) ( g ) d ( fs ) g8 d' |
}

pre_chorus_riff = \relative g, {
    g4 r8 b'16 ( c ) ( b ) ( g ) b,8 d ds |
}

chorus = \relative e {
  \mark \default

  \repeat volta 2 {
    e8. e, g''8 ( fs8. ) d b8 |
    e,8. e, g''8 ( fs ) e,, a b |

    \alternative {
      \volta 1 {
        c8. g' d'8 c4 r8 g |
        c4 b4 a8 e, g' fs |
      }

      \volta 2 {
        c8. g' d'8 c4 r8 g, |
        c4 b a d |
      }
    }
  }
}

music = \relative g, {
  \key g \major
  \time 4/4
  \clef "bass"

  \compressMMRests {
    R1 * 2 |
  }

  \mark \default

  \repeat volta 2 {
    \g_riff
    \c_riff
    \g_riff

    \alternative {
      \volta 1 {
        \g_riff
      }

      \volta 2 {
        \pre_chorus_riff
      }
    }
  }

  \chorus

  \mark \default

  \g_riff
  \c_riff

  \repeat unfold 2 {
    \g_riff
  }

  \repeat unfold 2 {
    \transpose g fs \g_riff
  }

  \repeat unfold 2 {
    \g_riff
  }

  \chorus

  \repeat unfold 2 {
    \g_riff
  }

  \repeat unfold 2 {
    \c_riff
  }

  \a_riff
  \g_riff
  \pre_chorus_riff

  \chorus

  \repeat unfold 2 {
    \g_riff
  }

  \repeat unfold 2 {
    \c_riff
  }

  \a_riff

  \repeat unfold 2 {
    \g_riff
  }

  \repeat volta 2 {
    \a_riff
    \g_riff

    \alternative {
      \volta 1 {
        \g_riff
      }

      \volta 2 {
        \pre_chorus_riff
      }
    }
  }

  e'4 e,8 <e'' b'> ~ <e b'>4 e,,8 <e'' b'> ~ |
  <e b'>4 e,,8 <e'' b'> ~ <e b'>4 <d, fs'>8 r |
  <c e'>4. <c e'>8 ~ <c e'>4. <c e'>8 ~ |
  <c e'>4. <c e'>8 ~ <c e'>4 <c e'>4 |
  e,4. <e'' b'>8 ~ <e b'>4 e,,8 <e'' b'> ~ |
  <e b'>4 e,,8 <e'' b'> ~ <e b'>4 <d, fs'>8 r |
  <c e'>4. <c e'>8 ~ <c e'>4. <c e'>8 ~ |
  <c e'>4. <c e'>8 ~ <c e'>4 <c e'>4 |
  <g b'>1 ~ |
  <g b'>1 |

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
  } {
    \music
  }
}
