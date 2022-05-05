\version "2.23.8"
\language "english"
\pointAndClickOff

\paper {
  #(set-paper-size "letter")
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 0.5\in
  bottom-margin = 0.5\in
}

\header {
  tagline = ##f
  title = "Simulation Swarm"
  composer = "Adrianne Lenker (Big Thief)"
}

introMelody = { s1 * 4 | }

verseMelody = \relative c'' {
  r4 ef8 f16 c~ c8 c4. |
  s1 * 3 |
  s1 * 12 |
}

verseChords = \chordmode {
  df1 | gf | af | gf |
}

chorusA = \chordmode { df1 | bf:m | af | gf | }

chorusChords = \chordmode {
  \repeat unfold 2 { \chorusA }
  ef:m | af | df | gf |
  \chorusA
}

melody = {
  \introMelody
  \verseMelody
}

changes = {
  \verseChords
  \bar "||"
  \chorusChords
  \bar "||"
}

\score {
  <<
    \new ChordNames {
      \changes
    }
    \new Staff {
      \key df \major
      \melody
    }
  >>
}
