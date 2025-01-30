% Author: Dominic van der Zypen
% Created using vi
% Last modified: 2020-08-09
\version "2.16.0"  % necessary for upgrading to future LilyPond versions.
 
\header{
  title = "New World Medley"
  subtitle = "Hochzeit von Daniela und Andreas vom 29.08.2020, von Ruth und Dominic"
}
global= {
  \time 4/4
  \key d \major
  \tempo 4 = 90
}
%--------------------------------- Cello Dominic
cellodominic = \new Voice \relative c' {
  \set Staff.instrumentName = #"Cello 1"
  \clef bass
  % - - - - - 1st movement - - - - -
  r1 | d,2^"Dvorak 9. Symph 1. Satz" <fis, cis'> | e4 a d, fis |
  e4 a d, d' |
  a8 e' cis a a e' cis a | a' e cis a a' e cis a |
  % - - - - - 2nd movement - - - - -
  <fis' d'>1 | <as es'>^"Dvorak 9. Symph 2. Satz" |
               <fis d'> | <fis dis'> | <b d> |%bar5
  <b e>2 <cis e> | <a fis'> 1 | <a fis'>8
           <a fis'>~ <a fis'>2. \fermata | fis4. a8 a2 |%bar9
  fis4 e d2 | e4 fis a4. fis8 | e2. r4 | fis4. a8 <e a>2 |%bar13
  d'4. e8 fis2 | e4. d8 e4 b | d1 | g,,4. b8 b2 |%bar17
  a4 fis g2 | g2 a4 fis | g1 |%bar20
  % - - - - repeat some - - - - -
  fis'4. a8 a2 |%bar9
  fis4 e d2 | e4 fis a4. fis8 | e2. r4 | fis4. a8 <e a>2 |%bar13
  d'4. e8 fis2 | e4. d8 e4 b | d1 |
  % - - - - - 3. satz bar 3/4 - - - - - -
  \time 3/4 r4^"Dvorak 9. Symph 3. Satz" fis,8 a8 a4~ |
                   a2 \tuplet 3/2 {b8 a e} | d2 e4 |%bar23
  fis8 a a2 ~| a8 d cis b a4~ | a8 fis e fis a fis | e fis d4 a |%bar27
  g4 r4 b | g r4 b | d, r4 a' |%bar30
  d, r4 fis | d r4 fis | d r4 a' |%bar33
  d, r4 fis | d r4 fis | d r4 a' |d, r4 a''16 a a8 |%bar37
  % - - - - - 6/8 tarantella - - - - - -
  \time 6/8 d,8 d r8 r8 e g | fis16 e d8 r8 r8 a'16 a a8 |%bar39
  d,8 d r8 r8 e g | fis16 e d8 r8 r8 a'16 a a8 |%bar41
  d,8 d r8 r8 ais'16 ais ais8 | dis,8 dis r8 r8 <e b'>16 <e b'> <e b'>8|
       r8 <f c'>16 <f c'> <f c'>8  r8 <fis cis'>16 <fis cis'> cis'8 |%bar44
  fis16 fis fis8 fis16 fis fis8 fis16 fis fis8 |%bar45
  % - - - - - main 3. satz - - - - - - -
  b,4 a gis | g fis b, |%bar47
  b4 a gis | g fis b |%bar49
  % - - - - - ueberleitung hochzeitsmarsch - - -
  \time 4/4 \tuplet 3/2 {fis8 fis fis} fis2. |
             \tuplet 3/2 {fis8 fis fis} fis2. |%bar51
  \tuplet 3/2 {g8 g g} g2. | \tuplet 3/2 {f'8 f f} f2. |%bar53
  \tuplet 3/2 {<b,f'>8 <b f'> <b f'>}<b f'>2\fermata
        \tuplet 3/2 {c8 c c}|%bar54
  % - - - - - mendelssohn hochzeitsmarsch - - -
  \key c \major
  <c, c'>2.^"Mendelssohn Hochzeitsmarsch" \tuplet 3/2 {c'8 c c } |
             <c, c'>2. \tuplet 3/2 {c8 e g} |%bar56
 c4 \tuplet 3/2 {e,8 g c} e4 \tuplet 3/2 {g,8 c e } |%bar57
 g4 \tuplet 3/2 {g,8 c e } g4 \tuplet 3/2 {c,8 e g} |%bar58
 <e c'>2 <dis b'>4. fis'8 | a4 g f d | c2 d4 g,8. d'16 |%bar61
 e4 c,,8 e g c e g | <e c'>2 <dis b'>4. fis'8| a4 g f d |%bar64
 c2 e4 d8. e16 | d2 c4 r4 | c2 c4. c8 |%bar67
 e4 d b g | g4. c8 c4. e8 | e4 d b g |%bar70
 g4. e'8 e4. g8 | g2 f4 e |%bar72
 d4 cis8. e16 d4 a8. c16 | b4 g a b |%bar74
 <e, c'>2 <dis b'>4. fis'8 | a4 g f d | c2 d4 g,8. d'16 |%bar77
 e4 c,,8 e g c e g | <e c'>2 <dis b'>4. fis'8| a4 <bes, g'> <a f'> d |%bar80
 c2 e4 d8. e16 | d2 c4 r4 |%bar82
  \bar "|."
}
%---------------------------------- Cello Ruth
celloruth = \new Voice \relative c' {
  \set Staff.instrumentName = #"Cello 2"
  \clef bass
  % - - - - - 1st movement - - - - -
  d,4. d8 b a~a r8 | d8. fis16  a8 a a4 r4 | a8. b16 a8 g fis a~a r8 |
  \tuplet 3/2 {g8 a g} \tuplet 3/2 {e cis b } a8 fis'~fis r8 |
  g16 a g8 g8 r8 g16 a g8 g8 r8 | cis16 d cis8 cis r8 cis16 d cis8 cis r8 |
  % - - - - - 2nd movement - - - - -
  <d, a'>1 | c | <d a'> | b | g' |%bar5
  <e g> | d | d,8 d~d2.\fermata | d'4. fis8 fis2 |%bar9
  d4 a fis2 | cis'2 b | a2. r4 | d2 cis |%bar13
  <b fis'>2 <a fis'>2 | g1 | d1 | b''4. d8 d2 |%bar17
  cis4 a b2 | b4 d cis a | b1 |%bar20
  % - - - - repeat some - - - - -
  d,4. fis8 fis2 |%bar9
  d4 a fis2 | cis'2 b | a2. r4 | d2 cis |%bar13
  <b fis'>2 <a fis'>2 | g1 | d1 |
  % - - - - - 3. satz bar 3/4 - - - - - -
  \time 3/4 d4 r4 a' | d,4 r4 a' | d, r4 a' |%bar23
  d, r4 a' | d, r4 a' | d, r4 a' | d, r2 |%bar27
  r4 b''8 d8 d4~| d2 \tuplet 3/2 {e8 d b} |a2 g16( fis e8)|%bar30
  fis8 a8 a2~|a2 \tuplet 3/2 {b8 a e} | d2 e4 |%bar33
  fis8 a8 a2~|a8 d cis b a4~|a8 fis e fis a fis | e fis d8 r8 r4 |%bar37
  % - - - - - 6/8 tarantella - - - - - -
  \time 6/8 c8 c c c c c | c c c c c c |%bar39
  c8 c c c c c | c c c c c c |%bar41
  c c c cis cis cis | cis cis cis d d d | dis dis dis e e e |%bar44
  fis16 fis fis8 ais16 ais ais8 cis16 cis e8 |%bar45
  % - - - - - main 3. satz - - - - - - -
  fis16  fis fis8 b, b r8 r8 | cis e d16 cis b8 r8 r8 |%bar47
  fis16 fis fis8 b, b r8 r8 | cis e d16 cis b8 r8 b8  |%bar49
  % - - - - - ueberleitung hochzeitsmarsch - - -
  \time 4/4 \tuplet 3/2 {fis'8 fis fis} fis2. |
      \tuplet 3/2 {fis8 fis fis} fis2. | %bar51
  \tuplet 3/2 {g8 g g} g2. | \tuplet 3/2 {g8 g g} g2. |%bar53
  \tuplet 3/2 {<g,d'>8 <g d'> <g d'>}<g d'>2 \fermata r4 |%bar54
  % - - - - - mendelssohn hochzeitsmarsch - - -
  \key c \major
  c4 c, c' r4 | <g e'> c, <g' e'> r4 |%bar56
  e'4 c, g' c, | <g' e'> c, <g' e'> c |%bar58
  a2 b4. dis8 | e2 <d a'>4 <f a>| <g,e'>2 <g f'>4 <g f'> |%bar61
  c,4 <g' e'>4 r2 | <a fis'>2 b4. dis8 | e2 <d a'>4 <f a> |%bar64
  <g, e'>2 <g g'>4 <g f'> | f'4 g, c, r4 | <c g' e'>2 <g' e'>4. <g e'>8|%bar67
  g'4 f <g, d'>2 | c,4 g' g g | g'4 f <g, d'>2 |%bar70
  <g e'>4 c, g' e' | <f a>2 <d a'>4 <e a>4 |%bar72
  <f a>4 <f a> <fis a> <fis a> | g4 g, a b |%bar74
  <a fis'>2 b4. dis8 | e2 <d a'>4 <f a>| <g,e'>2 <g f'>4 <g f'> |%bar77
  c,4 <g' e'>4 r2 | a4 fis b dis, | e4 cis' d f |%bar80
  <g, e'>2 <g g'>4 <g f'> | f'4 g, <c,e'>4 r4 |%bar82
  \bar "|."
}
\score {
  \new StaffGroup <<
    \new Staff << \global \cellodominic >>
    \new Staff << \global \celloruth >>
  >>
  \layout { }
  \midi { }
}