% Author: Dominic van der Zypen
% Created using vi
% Last modified: 2020-10-29

\version "2.16.0"  % necessary for upgrading to future LilyPond versions.
 
\header{ 
  title = "Skyfall"
  subtitle = "Arrangement: Dominic van der Zypen"
} 

global= { 
  \time 4/4
  \key d \minor
  \tempo 4 = 80
} 
%--------------------------------- Violine
cellodominic = \new Voice \relative c' {
  \set Staff.instrumentName = #"Violine"
  \clef bass 
  <f,, e'>1 \fermata | <f' d'>4 <f d'> <f d'> <f d'> |%bar2
  <f d'><f d'> <f d'> < f d'> | <f d'>4 <f d'> <f d'> <f d'> |%bar4
  <f d'><f d'> <f d'> < f d'> | <g d'> <g d'> <g d'> <g d'> |%bar6
  <e d'> <e d'> <e cis'> <e cis'> |%bar7
  %---------- Vocals: "This is the end" ---------
  d  d <bes d> <bes d> | <g d'> <g d'> <g d'> <g d'> |%bar9
  d' d <bes d> <bes d> | <g d'> <g d'> <g d'> <g d'> |%bar11
  d' d <bes d> <bes d> | <g d'> <g d'> <g d'> <g d'> |%bar13
  bes8 g bes g bes g bes g | a cis e a, cis e d d|%bar15
  %---------- Vocals: "Let the sky fall" ---------
  d8. a'16~a2 d,8 d | d8. bes'16~ bes2 d,8 d |%bar17
  d8. d'16~d4. g,8 g f | g16 f g a~a2 f8 e |%bar19
  d8. a'16~a2 d,8 d | d8. bes'16~ bes2 d,8 d |%bar21
  d8. d'16~d4. g,8 g f | g16 f g a~a2 f8 e |%bar23
  d1 | <g, d'>2 f'4 e | d1 | <g, d'>2 f'4 e8 e'8 |%bar27
  %---------- Vocals: "This is the end" ---------
  e8 d16 d16~d2. | r2 d8 e f e |%bar9
  e4.. d16 d2 | r2 e8 d e d |%bar11
  e4.. d16 f2 | r2 e8 d e d |%bar13
  e2.~e8 d8 | a'2. r4 |%bar15
  \bar "|." 
} 
%---------------------------------- Cello 
celloruth = \new Voice \relative c' { 
  \set Staff.instrumentName = #"Cello"
  \clef bass 
  <d,, a'>1 \fermata | <d' a'>4 <d a'> bes bes |%bar2
  g8 g4 g8 g8 g4 g8 | <d' a'>4 <d a'> bes bes |%bar4
  g8 g4 g8 g8 g4 g8 | a8 a4 a8 a8 a4 a8 |%bar6
  a8 a4 a8 r4 r8 e''8 | %bar7 -> auftakt zu vocals
  %---------- Vocals: "This is the end" ---------
  e8 d16 d16~d2. | r2 d8 e f e |%bar9
  e4.. d16 d2 | r2 e8 d e d |%bar11
  e4.. d16 f2 | r2 e8 d e d |%bar13
  e2.~e8 d8 | a'2. r4 |%bar15
  %---------- Vocals: "Let the sky fall" ---------
  d,,2 c | bes8 d f r8 a,2 |%bar17
  g8 b d g f,2 | e8 gis b r8 a2 |%bar19
  d2 c | bes8 d f r8 a,2 |%bar21
  g8 b d g f,2 | e8 gis b r8 a2 |%bar23
  <d, a'>2 bes' | b bes | <d, a'>2 bes' |b bes |%bar27
  %---------- Vocals: "This is the end" ---------
  <d, a'>2 bes' | b bes | <d, a'>2 bes' |b bes |%bar27
  <d, a'>2 bes' | b bes | bes8 g bes g bes g bes g | a cis e cis~cis2 |
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