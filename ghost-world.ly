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
  title = "Ghost World"
  composer = "Aimee Mann"
}

changesIntro = \chordmode {
  fs2:m s8 gs4:m a8 | s1 |
}

changesVerse = \chordmode {
  \repeat unfold 3 { e2 b | fs1:m | }
  cs2:m a | e b | cs:m a | e1 |
}

changesChorus = \chordmode {
  \repeat unfold 2 { b1 | fs:m | }
  b | fs2:m a | fs:m e | b1 |
  fs:m | b |
}

changesChorusFirstEnding = \chordmode { fs2:m a | }

changes = \chords {
  \changesIntro
  \bar "||"
  \changesVerse
  \bar "||"
  \changesChorus
  \changesChorusFirstEnding
  \bar "||"
  \changesVerse
  \changesChorus
}

melodyIntro = { s1 * 2 |}

melodyVerse = \relative c'' {
  e8 b4 cs8~ cs e4 gs,8~ |
  gs e4 fs8~ fs a4 gs8~ |
  gs e4 b'8~ b4. gs8~ |
  gs gs4.~ gs4 r4 |
}

melody = {
  \melodyIntro
  \melodyVerse
  s1 * 37
}

\score {
  <<
    \changes
    \new Staff {
      \clef treble
      \key e \major
      \time 4/4
      \melody
    }
  >>
}
