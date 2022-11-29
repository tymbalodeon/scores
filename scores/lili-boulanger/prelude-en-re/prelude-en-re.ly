\version "2.23.80"

\include "settings.ily"
\include "style.ily"

\header {
  title = \markup { "Prélude en Ré" \flat }
  composer = "Lili Boulanger"
}

key_signature = \key df \major

upper = \relative c' {
  \clef treble
  \key_signature
  \time 4/4

  r4 <df ef f>2 <b df e g>4 |
  <df ef f a> <ef f bf>2 r4 |
  r <df ef f>2 <b df ef g>4 |
  <ef f a>8 c' <ef, f bf> r r4 <ef f a>8 c' |

  <ef, f bf>8 f'4.~ f8 f, <g, bf ef a>4 |
  <bf f' bf>8 f'' <g bf>2. |
  af8 gf f ef ef df r4 |
  r8 f bf4~ bf8 f <df f a> gf |

  <bf,, f' bf> f'' af4. gf8 <f, a df f> ef' |
  <ef, bf' ef> df' r4 r8 f,4 f8 |
  f' f,4 f8 f'8 f, <ef'  f> f, |
}

lower = \relative c {
  \clef bass
  \key_signature
  \time 4/4

  <df df,>1 |
  <a' b>4 <af, df>2 <df, df' af'>4~ |
  <df df' af'>4 r4 r2 |
  <a'' b df>4 <af df>8 r <df,, df' af'>4 <b'' df>4 |

  <af df> r <df,, df' af'> <f df' f> |
  \repeat unfold 2 {
    <df af' df> <df df'>2 <f df' f>4 |
  }

  \repeat unfold 2 {
    <df af' df> <df df'>2 <f a df f>4 |
  }
  <df af' df> <df af' df af'>2 r4 |
  r
  \clef "treble"
  <cf''' ef>2 <f, a c>4 |
  <a c> <ef g>2 <f a>4 |

}

\layout {
  \context {
    \Score
    \consists #(set-bars-per-line '(4))
  }
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
}
