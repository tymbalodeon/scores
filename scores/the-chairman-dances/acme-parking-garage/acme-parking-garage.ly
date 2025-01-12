\version "2.25.22"

\include "helpers/settings.ily"
\include "helpers/bar-numbers-left.ily"

\header {
    title = "Acme Parking Garage"
    subtitle = "The Chairman Dances"
    composer = "Eric Krewson"
    arranger = "Will Schwarz, bass"
}

#(define-markup-command (left-bracket layout props) ()
"Draw left hand bracket"
(let* ((th 0.2) ;; todo: take from GROB
	(width (* 2.5 th)) ;; todo: take from GROB
	(ext '(-2.8 . 2.8))) ;; todo: take line-count into account
	(ly:bracket Y ext th width)))

leftBracket = {
  \once\override BreathingSign.text = #(make-left-bracket-markup)
  \once\override BreathingSign.break-visibility = #end-of-line-invisible
  \once\override BreathingSign.Y-offset = ##f
  \once\override BreathingSign.break-align-symbol = #'custos
  \breathe
}


#(define-markup-command (right-bracket layout props) ()
"Draw right hand bracket"
  (let* ((th .2);;todo: take from GROB
          (width (* 2.5 th)) ;; todo: take from GROB
          (ext '(-2.8 . 2.8))) ;; todo: take line-count into account
        (ly:bracket Y ext th (- width))))

rightBracket = {
  \once\override BreathingSign.text = #(make-right-bracket-markup)
  \once\override BreathingSign.Y-offset = ##f
  \breathe
}

acmeParkingGarageBass = \relative c {
    \clef "bass"
    \key g \major

    \time 2/4

    % \new CueVoice {
    %     \cueClef treble

    %     \relative c' {
    %         | g16 a b cs d16 e f g
    %         | a16 b cs d e f g a

    %         \ottava #1

    %         | b16 cs d e f g a b

    %         \ottava #-0

    %         \cueClefUnset
    %     }
    % }

    % | R2 * 10

    % \mark \default

    | R2
    | r4 r16 g g a
    | bf2 ~
    | bf16 f bf ( c ) ( bf8. ) a16

    | g2 ~
    | g4 ~ g16 g g a
    | bf2 ~
    | bf2

    | R2 * 4

    | \leftBracket bf2 ~
    | bf4 ~ bf16 \rightBracket bf bf a

    | g16 -> -. r8. r4
    | g16 -> -. r8. r16 g16 -> -. r bf -> -.
    | g16 -> -. r8. r4

    | R2 * 4

    | \leftBracket bf2 ~
    | bf2 ~
    | bf2 ~
    | bf4 ~ bf16 \rightBracket bf bf a

    | g16 -> -. r8. r4
    | R2

    \mark \default

    | r16 bf c bf c -> -. r8 c16
    | bf16 c bf c -> -. r bf c bf
    | r16 bf c bf c -> -. r bf bf
    | r16 c d c d -> -. r d c

    | r16 bf c bf c -> -. r8 c16
    | bf16 c bf c -> -. r bf c bf
    | r16 bf c bf c -> -. r bf bf
    | r16 c d c d -> -. r d -> -. r

    \mark \default

    | R2 * 3

    | \leftBracket bf2 ~
    | bf4 ~ bf16 \rightBracket bf bf a
    | g16 -> -. r8. r4
    | R2
    | g16 -> -. r8. r4

    | R2 * 2

    | \leftBracket bf2 ~
    | bf2 ~
    | bf2 \rightBracket
    | bf16 -> -. r8. r16 bf bf a
    | g16 -> -. r8. r4

    | R2 * 2

    | bf16 -. r8. r4
    | R2

    \mark \default

    \repeat volta 2 {
        | r16 bf c bf c -> -. r8 c16
        | bf16 c bf c -> -. r bf c bf
        | r16 bf c bf c -> -. r bf bf
        | r16 c d c d -> -. r d c

        | r16 bf c bf c -> -. r8 c16
        | bf16 c bf c -> -. r bf c bf
        | r16 bf c bf c -> -. r bf bf
        | r16 c d c d -> -. r d c
    }

    \key f \major

    \mark \default

    | f,2 ~
    | f2
    | af2 ~
    | af4 ef'
    | af4 af8 g

    | f4 ~ f8. c16
    | f,2 ~
    | f2

    | af4 ~ af8. d16
    | af'16 d8 af16 ~ af d, af8

    | g2 ~
    | g4. f8 \glissando

    | bf2 ~
    | bf2

    \mark \default

    | g'4 -- -. g -- -.
    | f -- -. f -- -.
    | af -- -. af -- -.

    | g4 ^\markup sim. g
    | f f
    | af af

    | g8. d16 g d g,8
    | f'8. c16 f,8 c'
    | af'8. ef16 af,8 ef'

    | g8. d16 g d g,8
    | f'8. c16 f,8 c'
    | af'8. ef16 af,8 ef'

    \mark \default

    \repeat volta 4 {
        | g16 -> g -> g -> g -> g ^\markup sim. g g g
        | f16 f f f f f f f
        | af16 af af af af af af af

        | g16 g g g g g g g
        | f16 f f f f f f f
        | af16 af af af af af af af
    }

    | R2
    | r4 r16 g, g a
    | bf2 ~
    | bf2

    | R2 * 4
    | R2 * 2

    \bar "|."
}

% \score {
%     \new Staff \with {
%         instrumentName = "Bass"
%         \numericTimeSignature
%     } {
%         \compressMMRests
%         \acmeParkingGarageBass
%     }
% }
