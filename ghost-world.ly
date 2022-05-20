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

changesChorusFirstEnding = \chordmode {
  fs2:m a |
}

changes = \chords {
  \changesIntro
  \bar "||"
  \sectionLabel "Verse"
  \changesVerse
  \bar "||"
  \sectionLabel "Chorus"
  \changesChorus
  \changesChorusFirstEnding
  \bar "||"
  \changesVerse
  \changesChorus
}

melodyIntro = \new Voice \with {
  \consists "Pitch_squash_engraver"
} {
  \improvisationOn
  fs4 fs8. fs16 r8 gs4 a8~ | a1 |
}

melodyVerse = \relative c'' {
  e8 b4 cs8~ cs e4 gs,8~ |
  gs e4 fs8~ fs a4 gs8~ |
  gs e4 b'8~ b4. gs8~ |
  gs gs4.~ gs4 gs8 gs~ |

  gs e4 b'8~ b4. cs16 gs~ |
  gs2. b8 e~ |
  e cs4 ds8~ ds e4 b8~ |
  b e,4 b'8~ b a4 gs8~ |
  gs e4 gs8~ gs fs4 e8~ |
  e2.
}

melodyChorus = \relative c'' {
  b16 b8. |
  r8 e fs e e ds4 cs8~ |
  cs2  fs8 gs4. |
  fs2 e8 fs~ \tuplet 3/2 { fs8 e ds~ } |
  ds cs4. fs8 gs4. |
  fs2 fs4~ \tuplet 3/2 { fs8 e ds } |
  cs2 e |
  b8 cs~ \tuplet 3/2 { cs8 b cs } b2 |
  r2 r8 fs gs4~ |
  gs8 fs16 e fs2. |
}

melody = {
  \melodyIntro
  \melodyVerse
  \melodyChorus
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
