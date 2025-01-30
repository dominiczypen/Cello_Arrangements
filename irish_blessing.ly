% Author: Dominic van der Zypen
% Created using vi
% Last modified: 2019-05-01
 
\version "2.16.0"  % necessary for upgrading to future LilyPond versions.
 
\header{
  title = "May the road rise to meet you"
  subtitle = "Happy Birthday, Margrit!"
}
 
global= {
  \time 4/4
  \key d \major
  \tempo 4 = 90
}
%------------------------------------- Voice
gesang = \new Voice \relative c'' {
  \set Staff.instrumentName = #"Gesang "
 
  r1 | r1 | r1 | r1 | r1 | r1 | r1 | r2 r4 d,8 e | %bar8
  %----- chorus -----
  \repeat volta 2 {fis2 fis4 b | a4 e4 r4 e8 fis| %bar10
  g4. fis8 e4 d | e2. d8 cis | d4. a'8~a2 | %bar13
  d,4. a'8~a4 fis8 e8~ | e1 | e2. b'8 cis | %bar16
  d4 cis b8 a fis d | b'2. b8 cis | a4. fis8 fis4 e | %bar19
  d2~d8 d d cis | d4. a'8~a4 d,8 d | d4. a'8~a2 | %bar22
  d,4. fis8 e8(d4) cis8 | %bar23
  %----- solo soprano -----
  d2~d8 d8 fis a | cis4 a8 a4. d,4 | d8 a'4.~a8 a b a | %bar26
  a8 d,4 d8 fis e d cis | b2. r8 cis | d4. a'8~a2 | %bar29
  d4 cis8 a8~a4 fis8 a | d4. b8~b4 g4 | fis8 e8~e4 r4 d8 e | %bar32
  } % ! end repeat
  %----- chorus -----
  \bar "|."
}
%--------------------------------- Cello Ruth
celloruth= \new Voice \relative c' {
  \set Staff.instrumentName = #"Cello 1"
  \clef bass
 
  d4 cis b8 a fis d | b'2~b8 b b cis | a4. fis8 fis4 e | %bar3
  d2. d8 cis | d4. a'8~a2 | d,4. a'8~a2 | %bar6
  d,4. fis8 e4 d4 | d1 | %bar8
  %----- chorus -----
  a'4. a4. r4 | cis,8 d e fis g a r4 | %bar10
  d,2 g | d2 cis4 r4 | cis2. r4 | %bar13
  cis2. r4 | b'1 | d2 cis4 r4 | %bar16
  fis,2 fis2 | g8 g, b e g r8 r4 | d2 cis | %bar19
  fis2. r4 | b,4 cis8 d8~d4 r4 | a4 cis8 d8~d4 r4 | %bar22
  g,4 b cis2 | %bar23
  %----- solo soprano -----
  a2. r4 | d2. r4 | cis2. r4 | %bar26
  d1 | d2. r4 | fis2. r4 | %bar29
  fis2. r4 | fis2 g8 a b4 | e,4 d cis2 | %bar32
  \bar "|."
}
%---------------------------------- Cello Dominic
cellodominic = \new Voice \relative c' {
  \set Staff.instrumentName = #"Cello 2"
  \clef bass
 
  b,8 fis'4. a,8 fis'4. | g,8 b e fis g4 r4 | d2 fis,4 a | %bar3
  b2 a | g1 | fis1 | %bar6
  e2 a | d,8 a' d e fis2 | %bar8
  %----- chorus -----
  d4. d'8~d2 | cis,4. cis'8~cis2 | %bar10
  b,1 | a4. a'4. a,4 | b2. r4 | %bar13
  a2. r4 | g'2. r4 | a1 | %bar16
  b2 a2 | g2. r4 | d,2 fis | %bar19
  b2 a2 | g2. r4 | fis2. r4 | %bar22
  e2 a2 | %bar23
  %----- solo soprano -----
  d,2. r4 | g2. r4 | fis2. r4 | %bar26
  b2 a2 | g2. r4 | b2. r4 | %bar29
  a2. r4 | g2 e4 e' | a,1 | %bar32
  \bar "|."
}
\score {
  \new StaffGroup <<
    \new Staff << \global \gesang >>
    \new Staff << \global \celloruth >>
    \new Staff << \global \cellodominic >>
  >>
  \layout { }
  \midi { }
}