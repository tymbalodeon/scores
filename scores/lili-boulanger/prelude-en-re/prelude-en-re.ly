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

  r4 <df ef f>2 <b ef e g>4 |
  <df ef f a> <ef f bf>2 r4 |
  r <df ef f>2 <b ef ef g>4 |
  <ef f a>8 c' <ef, f bf> r r4 <ef f a>8 c' |
}

lower = \relative c {
  \clef bass
  \key_signature
  \time 4/4

  <df df,>1
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
