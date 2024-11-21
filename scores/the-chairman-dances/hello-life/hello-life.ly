\version "2.25.20"

\include "helpers/settings.ily"

\header {
  title = "Hello Life"
  composer = "Eric Krewson (The Chairman Dances)"
  arranger = "Ben Rosen, bass"
}

music = \relative c'' {
  \clef "bass"
  \tempo 4 = 100
  \key g \major

  R1*2 | % 3
  r4 r8 b8 ~ b8 a4. | % 4
  r4 fs8 d'8 ~ d8 fs,4. | % 5
  r4 r8 g8 ~ g8 fs4. | % 6
  r4 d8 b'8 ~ b8 d,8 e8 b'8 ~ | % 7
  b8 r8 r8 b8 ~ b8 a4. | % 8
  r4 fs8 d'8 ~ d8 fs,4. | % 9
  r4 r8 g8 ~ g8 fs4. | \barNumberCheck #10
  r4 d8 b'8 ~ b8 d,8 e8 b8 | % 11
  r4 d2. | % 12
  g2 fs2 | % 13
  c'4. c8 ~ c8 c4. | % 14
  b,4. b8 ~ b8 b4. | % 15
  r4 d2. | % 16
  r4 g8 fs8 ~ fs4 fs8 e8 | % 17
  e4. e8 ~ e8 e4. | % 18
  b'4. b8 ~ b8 b4. | % 19
  r4 r8 b8 ~ b8 a4. | \barNumberCheck #20
  r4 fs8 d'8 ~ d8 fs,4. | % 21
  r4 r8 g8 ~ g8 fs4. | % 22
  r4 d8 b'8 ~ b8 d,8 e8 b'8 ~ | % 23
  b8 r8 r8 b8 ~ b8 a4. | % 24
  r4 fs8 d'8 ~ d8 fs,4. | % 25
  r4 r8 g8 ~ g8 fs4. | % 26
  r4 d8 b'8 ~ b8 d,8 e8 b8 | % 27
  r4 d2. | % 28
  g2 fs2 | % 29
  c'4. c8 ~ c8 c4. | \barNumberCheck #30
  b,4. b8 ~ b8 b4. | % 31
  r4 d2. | % 32
  r4 g8 fs8 ~ fs4 fs8 e8 | % 33
  e4. e8 ~ e8 e4. | % 34
  b'4. b8 ~ b8 b4. | % 35
  g,,4. e8 g4. e8 | % 36
  g4. e8 g8 a8 b8 a8 ~ | % 37
  a4 a8 e8 a4 a8 e8 | % 38
  g4 r8 e8 g8 a8 b8 g8 ~ | % 39
  g4 g8 e8 g4. e8 | \barNumberCheck #40
  g4. e8 g8 a8 b8 a8 ~ | % 41
  a4 a8 e8 a4 a8 e8 | % 42
  g4 r4 r2 | % 43
  \times 2/3  {
    g'4 g'4 fs4 }
  \times 2/3  {
    d4 d,4 e4 }
  | % 44
  \times 2/3  {
    g4 g'4 fs4 }
  \times 2/3  {
    d4 g,4 a4 }
  | % 45
  \times 2/3  {
    a,4 c''4 e,4 }
  \times 2/3  {
    a,,4 c''4 e,4 }
  | % 46
  \times 2/3  {
    g,4 g'4 fs4 }
  \times 2/3  {
    d4 d,4 e4 }
  | % 47
  \times 2/3  {
    g4 g'4 fs4 }
  \times 2/3  {
    d4 d,4 e4 }
  | % 48
  \times 2/3  {
    g4 g'4 fs4 }
  \times 2/3  {
    d4 g,4 a4 }
  | % 49
  \times 2/3  {
    a,4 c''4 e,4 }
  \times 2/3  {
    a,,4 c''4 e,4 }
  | \barNumberCheck #50
  \times 2/3  {
    g,4 g'4 fs4 }
  \times 2/3  {
    d4 d,4 e4 }
  | % 51
  r4 r8 b''8 ~ b8 a4. | % 52
  r4 fs8 d'8 ~ d8 fs,4. | % 53
  r4 r8 g8 ~ g8 fs4. | % 54
  r4 d8 b'8 ~ b8 d,8 e8 b'8 ~ | % 55
  b8 r8 r8 b8 ~ b8 a4. | % 56
  r4 fs8 d'8 ~ d8 fs,4. | % 57
  r4 r8 g8 ~ g8 fs4. | % 58
  r4 d8 b'8 ~ b8 d,8 e8 b8 \bar "|."
}

PartPOneVoiceTwo =  \relative b, {
  \clef "bass" \numericTimeSignature\time 4/4 \key g \major
  \transposition c s1*5 s1*5 | % 11
  b2. b4 | % 12
  e4. e8 d4. d8 | % 13
  a'4 a2 a4 | % 14
  g,4 g2 g4 | % 15
  b2. b4 | % 16
  e,2 d'2 | % 17
  c4 c2 c4 | % 18
  g'4 g2 g4 s1*2 s1*5 s1 | % 27
  b,2. b4 | % 28
  e4. e8 d4. d8 | % 29
  a'4 a2 a4 | \barNumberCheck #30
  g,4 g2 g4 | % 31
  b2. b4 | % 32
  e,2 d'2 | % 33
  c4 c2 c4 | % 34
  g'4 g2 g4 s1 s1*5 s1*5 s1*5 s1*4 s1*4 \bar "|."
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
