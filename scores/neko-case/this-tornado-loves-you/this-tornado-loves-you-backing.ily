\version "2.25.24"

part_one_backing = \relative c'' \new Staff \with {
  \magnifyStaff #2/3
  alignAboveContext = "melody"
  \remove "Time_signature_engraver"
} {
  d1( |
  cs) |
}

stop_it_backing = \relative c'' \new Staff \with {
  \magnifyStaff #2/3
  alignAboveContext = "melody"
  \remove "Time_signature_engraver"
} {
  \repeat unfold 2 {
    r4 e8 d r4 e8 d |
  }
}
