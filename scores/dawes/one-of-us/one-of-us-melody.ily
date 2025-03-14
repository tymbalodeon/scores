\version "2.25.24"
melody_verse = \relative c' {
  e16 e8 e16 e8 gs16 gs~ gs gs gs8 gs a |
  b16 b8 b16 b8 e16 e~ e e ds8 cs b |
  a16 a8 a16 a8 cs16 cs~ cs cs cs8 cs e |
  gs16 gs8 gs16 gs8 a16 a~ a a gs8 fs e |
  b16 b8 b16 b8 ds16 ds~ ds ds ds8 ds e |
  fs16 fs8 fs16 fs8 b16 b~ b b b8 a a |
  gs16 gs8 gs16 gs8 e16 e~ e e e8 cs cs |
  b16 b8 b16 b8 e,16 e~ e e e8 e4 |
}

melody_chorus = \new Voice \with {
  \consists "Pitch_squash_engraver"
} \relative c' {
  \improvisationOn
  a4. e8~ e2 |
  b4. e8~ e2 |
  \repeat unfold 2 {
  a4. e8~ e2 |
  s1 |
  }
}
