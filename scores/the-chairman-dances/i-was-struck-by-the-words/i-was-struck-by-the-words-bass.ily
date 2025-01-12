\version "2.25.22"

iWasStruckByTheWordsBass = \relative d {
  \key c \major
  \time 4/4

  \clef bass

  \new CueVoice {
    r4 c8 a c d e g \laissezVibrer
  }

  | R1 * 2

  | r2 d8 c a f -> ~

  | f4 f'8 f, a c d f ~
  | f f d r c ( d ) f g, ~
  | g4 g'8 g, b d e g ~
  | g g e a, a' g e d ~

  | d2 r8 a c d ~
  | d4 a'8 d, d'8 c a d, -> ~

  \mark \default

  | d4 d'8 -. r c, -> c' -. r b, -> ~
  | b4 b'8 -. e,, ( f e ) f -.  g -> ~
  | g4 g'8 -. r f, -> f' -. r e, -> ~
  | e4 e'8 -. e, ( g  a ) c -. d -> ~

  | d4 d'8 -. r c, -> c' -. r b, -> ~
  | b4 b'8 -. e,, ( f e ) f -.  g -> ~
  | g4 g'8 -. r f, -> f' -. r e -. ->
  | r8 e,8 f ( g ) a b ( c ) d -> ~

  | d4 d'8 -. r c, -> c' -. r b, -> ~
  | b4 b'8 -. e,, ( f e ) f -.  g -> ~
  | g4 g'8 -. r f, -> f' -. r e, -> ~
  | e4 e'8 -. e, ( g  a ) c -. d -> ~

  | d4 d'8 -. r c, -> c' -. r b, -> ~
  | b4 b'8 -. e,, ( f e ) f -.  g -> ~
  | g4 g'8 -. r f, -> f' -. r e -. ->
  | r4 r8 a, a' g e f, -> ~

  \mark \default

  | f4 f'8 f, a c d f ~
  | f f d r c ( d ) f g, ~
  | g4 g'8 g, b d e g ~
  | g g e r d c a f ~

  | f4 f'8 f, a c d f ~
  | f f d r c ( d ) f g, ~
  | g4 g'8 g, b d e g ~
  | g g e a, a' g e f, ~

  | f4 f'8 f, a c d f ~
  | f f d r c ( d ) f g, ~
  | g4 g'8 g, b d e g ~
  | g g e r d c a f ~

  | f4 f'8 f, a c d f ~
  | f f d r c ( d ) f g, ~
  | g4 g'8 g, b d e g ~
  | g g e a, a' g e d ~

  | d2 r8 a c d ~
  | d4 a'8 d, d'8 c a d, -> ~

  \mark \default

  | d4 d'8 -. r c, -> c' -. r b, -> ~
  | b4 b'8 -. e,, ( f e ) f -.  g -> ~
  | g4 g'8 -. r f, -> f' -. r e, -> ~
  | e4 e'8 -. e, ( g  a ) c -. d -> ~

  | d4 d'8 -. r c, -> c' -. r b, -> ~
  | b4 b'8 -. e,, ( f e ) f -.  g -> ~
  | g4 g'8 -. r f, -> f' -. r e -. ->
  | r8 e,8 f ( g ) a b ( c ) d -> ~

  | d8 d'16 d d8 -. c16 c c8 -. b -. b -. a -. ->
  | r8 f16 f f8 -. e16 e e8 -. d -. c -. g -. ->
  | r8 b16 b b8 -. c16 c c8 -. d -. f -. g -. ->
  | r8 b16 b b8 -. c16 c \acciaccatura d e8 -- g -- a -- d, -- -> ~

  | d8 d,16 d d8 -. c16 c c8 -. b -. b -. a -. ->
  | r8 f16 f f8 -. e16 e e8 -. f -. fs -. g -. ->
  | r8 b16 b b8 -. c16 c d8 -- f -- g -- g, -- -> ~
  | g1

  | R1
  | r2 c8 ( d ) f g, -> ~

  \mark \default

  | g4 g'8 g, b d e g ~
  | g g e r d c a f ~

  | f4 f'8 f, a c d f ~
  | f8 f d r c ( d ) f g, ~
  | g4 g'8 g, b d e g ~
  | g g e a, a' g e f, ~

  | f4 f'8 f, a c d f ~
  | f8 f d r c ( d ) f g, ~
  | g4 g'8 g, b d e g ~
  | g g e r d c a f ~

  | f4 f'8 f, a c d f ~
  | f8 f d r c ( d ) f g, ~
  | g4 g'8 g, b d e g
  | a g b g d' g, e' f, ~

  \mark \default

  | f8 f c' c, a' b ( c ) f, ~
  | f8 f c' c, e' d c g ~
  | g8 g d' d, b' c ( d ) g, ~
  | g8 g b d a' g e f, ~

  | f8 f c' c, a' b ( c ) f, ~
  | f8 f c' c, e' d c g ~
  | g8 g d' d, b' c ( d ) g,
  | b8 d e ( g ) e b ( a ) f ~

  | f8 f c' c, a' b ( c ) f, ~
  | f8 f c' c, e' d c g ~
  | g8 g d' d, b' c ( d ) g, ~
  | g8 a, c d ( e ) g a f ~

  | f8 f c' c, a' b ( c ) f, ~
  | f8 f c' c, e' d c g ~
  | g8 \> g d' d, b' c ( d ) \acciaccatura a,16 b8
  | d e g a b d e,, f ~

  | f1 \! \fermata

  \bar "|."
}
