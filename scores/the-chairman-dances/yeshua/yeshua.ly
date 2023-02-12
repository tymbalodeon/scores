\version "2.24.1"

\include "settings.ily"

\header {
  title = "Yeshua"
  composer = "The Chairman Dances"
  arranger = "Ben Rosen, bass"
}

music = \relative b, {
  \clef "bass"
  \key b \major

  | R1 * 2

  \repeat volta 2 {
    b8 fs'8 r8 cs'8 ds8 fs8 ds8 as'8
    \once \override NoteHead.style = #'cross ds,8 b'8
    \once \override NoteHead.style = #'cross ds,8 as'8 ~ as8 fs8 ds8
    \once \override NoteHead.style = #'cross a,8
  }

  b8 fs'8 r8 cs'8 d8 fs8 \once \override NoteHead.style = #'cross d,8
  a''8
  \once \override NoteHead.style = #'cross d,,8 gs'8 \once \override
  NoteHead.style = #'cross d,8 fs'8 ~ fs8 e8 d8 \once \override
  NoteHead.style = #'cross a,8 \repeat volta 2 {

    b8 fs'8 r8 cs'8 ds8 fs8 ds8 as'8
    \once \override NoteHead.style = #'cross ds,8 b'8 \once
    \override NoteHead.style = #'cross ds,8 as'8 ~ as8 fs8 ds8 \once
    \override NoteHead.style = #'cross a,8 }

  b8 fs'8 r8 cs'8 d8 fs8 \once \override NoteHead.style = #'cross d,8
  a''8
  \once \override NoteHead.style = #'cross d,,8 gs'8 \once \override
  NoteHead.style = #'cross d,8 fs'8 ~ fs8 e8 d8 \once \override
  NoteHead.style = #'cross a,8 \repeat volta 2 {

    b8  fs'8 r8 cs'8 ds8 fs8 ds8 as'8
    \once \override NoteHead.style = #'cross ds,8 b'8 \once
    \override NoteHead.style = #'cross ds,8 as'8 ~ as8 fs8 ds8 \once
    \override NoteHead.style = #'cross a,8 }

  b8 fs'8 r8 cs'8 d8 fs8 \once \override NoteHead.style = #'cross d,8
  a''8
  \once \override NoteHead.style = #'cross d,,8 gs'8 \once \override
  NoteHead.style = #'cross d,8 fs'8 ~ fs8 e8 d8 \once \override
  NoteHead.style = #'cross a,8 \repeat volta 2 {

    b8  fs'8 r8 cs'8 ds8 fs8 ds8 as'8
    \once \override NoteHead.style = #'cross ds,8 b'8 \once
    \override NoteHead.style = #'cross ds,8 as'8 ~ as8 fs8 ds8 \once
    \override NoteHead.style = #'cross a,8 }

  b8 fs'8 r8 cs'8 d8 fs8 \once \override NoteHead.style = #'cross d,8 cs''8
  \once \override NoteHead.style = #'cross d,,8 d''8 \once \override NoteHead.style = #'cross d,,8 cs''8 ~ cs8 b8 a8 e8
  b,8 fs'8 r8 cs'8 ds8 fs8 ds8 as'8
  \once \override NoteHead.style = #'cross ds,8 b'8 \once \override NoteHead.style = #'cross ds,8 as'8 ~ as8 fs8 ds8 \once \override NoteHead.style = #'cross a,8

  | b8 fs'8 r8 cs'8 ds8 fs8 ds8 b'8 ~
  | b8 b8 as8 gs8 fs8 ds8 cs8 r8
  | b,4 r8 fs''16 gs16 fs8 es16 fs16 es8 ds16 e16
  | ds8 b8 cs8 ds8 b8 fs16 gs16 fs8 \once \override NoteHead.style = #'cross e,8

  | b'4 r8 fs''16 gs16 fs8 es16 fs16 es8 ds16 e16
  | ds8 b8 cs8 ds8 b8 fs16 gs16 fs8 \once \override NoteHead.style = #'cross e,8
  | b'4 r8 fs''16 gs16 fs8 es16 fs16 es8 ds16 e16
  | ds8 b8 cs8 ds8 b8 fs16 gs16 fs8 \once \override NoteHead.style = #'cross e,8

  | b'4 r8 fs''16 gs16 fs8 e16 fs16 e8 d16 e16
  | d8 cs8 d8 e8 cs8 a8 e8 e,8
  | b'4 r8 fs''16 gs16 fs8 es16 fs16 es8 ds16 e16
  | ds8 b8 cs8 ds8 b8 fs16 gs16 fs8 \once \override NoteHead.style = #'cross e,8

  | b'4 r8 fs''16 gs16 fs8 es16 fs16 es8 ds16 e16
  | ds8 fs,,8 r8 fs8 r8 e8 fs8 e8
  | b'4 r8 fs''16 gs16 fs8 es16 fs16 es8 ds16 e16
  | ds8 b8 cs8 ds8 b8 fs16 gs16 fs8 \once \override NoteHead.style = #'cross e,8

  | b'4 r8 fs''16 gs16 fs8 e16 fs16 e8 d16 e16
  | d8 cs8 d8 e8 cs8 a8 e8 e,8
  | b'4 r8 fs''16 gs16 fs8 es16 fs16 es8 ds16 e16
  | ds8 b8 cs8 ds8 b8 fs16 gs16 fs8 \once \override NoteHead.style = #'cross e,8

  | b'4 r8 fs''16 gs16 fs8 es16 fs16 es8 ds16 e16
  | ds8 b8 as8 gs8 fs8 e8 ds8 cs8
  | b4 r8 as16 b16 as8 gs16 as16 gs8 fs16 gs16
  | fs8 e8 fs8 gs8 a8 gs8 a8 as8

  | b4 r8 as16 b16 as8 gs16 as16 gs8 fs16 gs16
  | fs8 e8 fs8 gs8 a8 gs8 a8 as8
  | b4 r8 a16 b16 a8 g16 a16 g8 fs16 g16
  | fs8 e8 fs8 gs8 a8 gs8 a8 as8

  \bar "|."
}

\score {
  \new Staff \with {
    instrumentName = "Bass"
    \numericTimeSignature
  } {
    \compressMMRests
    \music
  }
}
