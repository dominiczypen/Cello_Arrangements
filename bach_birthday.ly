% Piece: BWV 1043
% Author: Dominic van der Zypen
% Created using vi
% Last modified: 2013-08-22

\version "2.14.0"  % necessary for upgrading to future LilyPond versions.

\header{
  title = "Geburtstagskantate BWV 2016"
  subtitle = "Zugeeygnet meinem werthen Freunde..."
}

\score
{
  \new PianoStaff 
  << % macht Klammern!
    %===================== Ruth
    \new Staff 
    { 
    \relative c
    {
      \tempo 4 = 100
      \clef "bass" 
      \key g \major
      \time 3/4
      r4 r8 d8 g a | b 8 c16( a) b8 c b a | g4 g8 b a b | c b16( a) d8 c b c |
      b4 a8 a b c | d e16( c) d2 | c8 d16( b) c2 |
      b8 c16( a) b2 | 
      % ----- Trillerphase
      a16 g a b a b a b a b a b | c b c d c d c d c d c d |
      b   a b c b c b c b c b c | d c d e d e d e d e d e |
      c8 d16( a) b8 e d c | b16( a b c) d8 g, b a |
      % ----- Happy birthday
      g4. r8 d8.( d16) | e4 d g | fis4. r8 d8.( d16) |
      e4 d a' | g4. r8 d8.( d16) | d'4 b g8.( g16) |
      fis4 e c'8.( c16) | b4 g a |
      % ----- Wius so schoen isch gsi
      g,16 fis g a b a b c d8.( d16) | c4 g8 a b cis |
      d cis d e d8.( d16) | c8 a fis d e fis | g b d g d8.( d16) |
      g,8 fis g a b4 | c4. b8 a8.( a16) | d4 d d | g2. |
    } % eeeend of relative c for staff
    }
    %===================== Dominic
    \new Staff 
    {
    \relative c
    { 
      \tempo 4 = 100
      \clef "bass" 
      \key g \major
      \time 3/4
      r4 r8 d8 b d | g,4 g' fis | e4 r8 e8 c b | a4 b8 c d a |
      d4 r8 d'8 b a | b a gis b e, gis | a g fis a d, fis |
      g fis e g b, d |  
      % ----- Trillerphase
      cis4. cis8 e cis | d4. d8 fis d|
      dis4. dis8 fis dis | e4. e8 gis e |
      a8 fis g c, d fis | g e b c d d |
      % ----- Happy birthday
      g,16 fis g a b a b c d8.( d16) | c4 g8 a b cis |
      d cis d e d8.( d16) | c8 a fis d e fis | g b d g d8.( d16) |
      g,8 fis g a b4 | c4. b8 a8.( a16) | d4 d d |
      % ----- Wius so schoen isch gsi
      g4. r8 d8.( d16) | e4 d g | fis4. r8 d8.( d16) |
      e4 d a' | g4. r8 d8.( d16) | d'4 b g8.( g16) |
      fis4 e c'8.( c16) | b4 g a | g2. |
    } % eeeend of relative c for staff 2
    }
    %------------------------------------------------- end of voices.
  >> % end of PianoStaff

 \layout { } % creates PDF named <filename>.pdf
 \midi { } % creates midi file!! effin weltlasse!!!
}
