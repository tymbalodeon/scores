\version "2.24.0"

\include "settings.ily"

\header {
  title = "Safe From Sadness"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

extra_beats = {
  \time 2/2
  R1 |

  \time 4/2
}

music = \relative fs, {
  \key fs \major
  \numericTimeSignature
  \time 4/2
  \clef "bass"

  \compressMMRests {
    R \breve * 6 |
    \extra_beats
    R \breve * 8 |
    \extra_beats
    R \breve * 3 |
    \extra_beats
    R \breve * 6 |
  }

  fs1 ~ fs2 fs |
  gs1 ~ gs2 gs |
  ds'1 ~ ds4. ds8 ~ ds4 es4 |
  fs1 ~ fs2 ds'2 |

  as \breve ~ |
  as2 as, cs1 |
  b1 ~ b2. fs4 |
  b1 ~ b4. b8 ~ b4 cs |

  fs1 ~ |
  fs2 fs,2 |
  gs1 ~ |
  gs2 gs2 |
  ds'1 ~ |
  ds4 es8 fs8 ~ fs4 as4 |
  ds1 ~ |
  ds2. es8 ( fs8 ) |
  as,1 ~ |
  as2. fs4 |
  as,1 ~ |
  as2 as2 |
  cs1 |
  b1 ~ |
  b2. fs4 |
  b1 ~ |
  b4. b8 ~ b4 cs4 |
  fs1 ~ |
  fs2 fs,2 |
  gs1 ~ |
  gs2 gs2 |
  ds'1 ~ |
  ds4. ds8 ~ ds4 es4 |
  fs1 ~ |
  fs2 ds'2 |
  as1 ~ |
  as2. fs4 |
  as,1 ~ |
  as2 gs2 |
  cs1 |
  b1 ~ |
  b2. fs4 |
  b1 ~ |
  b4. b8 ~ b4 cs4 |
  fs1 ~ |
  fs2 fs2 |
  ds'2 ds2 |
  <b fs'>1 ~ ~ |
  <b fs'>2. fs4 |
  b2 cs2 |
  ds2 es2 |
  fs1 ~ |
  fs2 fs,,2 |
  ds'2 ds2 |
  <b fs'>1 ~ ~ |
  <b fs'>2. fs'4 |
  \acciaccatura { cs'8 ( } ds4 ) ds4 cs4 cs4 |
  b4 as4 ds,4 es4 |
  fs1 ~ |
  fs2 fs,2 |
  ds'2 ds2 |
  <b fs'>1 ~ ~ |
  <b fs'>2. fs4 |
  b2 cs2 |
  ds2 es2 |
  fs1 ~ |
  fs2 fs,2 |
  ds'2 ds2 |
  e2 e2 |
  b'1 ~ |
  b2. fs4 |
  b1 ~ |
  b4 fs4 b4 as4 |
  gs1 |
  gs4. ds8 ~ ds2 |
  gs,1 ~ |
  gs1 |
  gs2 as2 |
  b1 ~ |
  b2. fs4 |
  b1 ~ |
  b2 ~ b8 fs8 fs8 b8 ~ |
  b1 ~ |
  b8 b8 b8 b8 ~ b4 cs4 |
  fs4. fs8 ~ fs4 cs4 |
  fs,4. fs'8 ~ fs4 fs,8 fss8 |
  gs4. gs8 ~ gs4 ds'4 |
  gs4. gs8 ~ gs4 ds4 |
  b4. b8 ~ b4 fs4 |
  b4. b8 ~ b4 fs4 |
  b4 b4 cs4 cs4 |
  ds4 ds4 es4 es4 |
  fs4. fs8 ~ fs4 cs4 |
  fs,4. fs'8 ~ fs4 fs,8 fss8 |
  gs4. gs8 ~ gs4 ds'4 |
  gs8 as4 gs8 ~ gs4 ds4 |
  b4. b8 ~ b4 fs'4 |
  b4. b8 ~ b4 fs4 |
  \acciaccatura { cs'8 ( } ds4 ) ds4 cs4 cs4 |
  b4 as4 ds,4 es4 |
  fs4. fs8 ~ fs4 cs4 |
  fs,4. fs'8 ~ fs4 fs,8 fss8 |
  gs4. gs8 ~ gs4 ds'4 |
  gs8 as4 gs8 ~ gs4 ds4 |
  b4. b8 ~ b4 fs4 |
  b4. b8 ~ b4 fs4 |
  b4 as8 b8 cs4 b8 cs8 |
  ds4 cs8 ds8 es4 ds8 es8 |

  fs4. fs8 ~ fs4 cs fs,4. fs'8 ~ fs4 fs,8 fss |
  gs4 ds' b' as gs ds gs, as |
  <b fs'> \breve ~ |
  <b fs'> \breve |

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
  } {
    \music
  }
}
