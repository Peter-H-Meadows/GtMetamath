example
mmSourceFileSetDotMM
<gtExample>

^ '
$c ( $.
$c ) $.
$c -> $.
$c -. $.
$c wff $.
$c |- $.

$v ph $.
$v ps $.
$v ch $.

wph $f wff ph $.
wps $f wff ps $.
wps $f wff ch $.

wi $a wff ( ph -> ps ) $.

${
min $e |- ph $.
maj $e |- ( ph -> ps ) $.
ax-mp $a |- ps $.
$}

ax-1 $a |- ( ph -> ( ps -> ph ) ) $.

${
a1i.1 $e |- ph $.
a1i $p |- ( ps -> ph ) $=
( wi ax-1 ax-mp ) ABADCABEF $.
$}

${
mp2.1 $e |- ph $.
mp2.2 $e |- ps $.
mp2.3 $e |- ( ph -> ( ps -> ch ) ) $.
    mp2 $p |- ch $=      ( a1i ax-mp ) BCEABCGDFHH $.  $} 
    
    
   ${
    mp1i.1 $e |- ph $.
    mp1i.2 $e |- ( ph -> ps ) $.
    mp1i $p |- ( ch -> ps ) $=
      ( ax-mp a1i ) BCABDEFG $.
  $}

'