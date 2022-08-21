accessing
rawProofString
^ '
$v ph $.  $( Greek phi $)  
$v ps $.  $( Greek psi $)
$v ch $.  $( Greek chi $)  
$v th $. 

${
	aa.1 $e |- ph $.    

	aa $a |- ( ps -> ph ) $.
$}

${    a1ii.1 $e |- ph $.    

a1ii $p |- ( ps -> ph ) $=      ( aa ) ABADCABEF $.

$}

${    
	mm.1 $e |- ph $.    
	mm.2 $e |- ( ph -> ps )  $. 

	ax-mp $a |- ps  $.  
$}

${
	mmphm.1 $e |- ch $.
	mmphm.2 $e |- ( ch -> th )  $. 
	mmphm $p |- th $= ( ax-mp ) AB $.  
$} 

${
$( Inference detaching an antecedent and introducing a new one. $)    
mp1i.1 $e |- ( ph -> ps ) $.
mp1i.2 $e |- ph $.
mp1i $p |- ( ch -> ps ) $=      ( ax-mp aa ) BCABDEFG $.  
$}

${    2a1i.1 $e |- ph $.    

$( Inference introducing two antecedents. $)    
2a1i $p |- ( ps -> ( ch -> ph ) ) $=      ( aa ) CA $.  
$} 

${    
mp2.1 $e |- ph $.    
mp2.2 $e |- ps $.    
mp2.3 $e |- ( ph -> ( ps -> ch ) ) $.    
$( A double modus ponens inference. $)    
mp2 $p |- ch $=      ( ax-mp ) X $.  $}

${    
mp2b.1 $e |- ph $.    
mp2b.2 $e |- ( ph -> ps ) $.    
mp2b.3 $e |- ( ps -> ch ) $.    
mp2b $p |- ch $=      ( ax-mp ) X $.  
$}  

${
a2i.1 $e |- ( ph -> ( ps -> ch ) ) $.    
a2i $a |- ( ( ph -> ps ) -> ( ph -> ch ) ) $.  
$}

${    
a2i.1 $e |- ( ph -> ( ps -> ch ) ) $.    
a2i $p |- ( ( ph -> ps ) -> ( ph -> ch ) ) $= ( a2i ax-mp ) A $.  
$}

${
mpd.1 $e |- ( ph -> ch ) $.  
mpd.2 $e |- ( ph -> ( ch -> ps ) ) $.    
mpd $p |- ( ph -> ps ) $= ( a2i ax-mp ) A $.  
$}

${    
$( First of 2 premises for ~ syl . $)    
syl.1 $e |- ( ph -> ps ) $.    
$( Second of 2 premises for ~ syl . $)    
syl.2 $e |- ( ps -> ch ) $.    

$( An inference version of the transitive laws for implication ~ imim2 and       ~ imim1 (and ~ imim1i and ~ imim2i ), which Russell and Whitehead call       "the principle of the syllogism...because...the syllogism in Barbara is       derived from them" (quote after Theorem *2.06 of [WhiteheadRussell]       p. 101).  Some authors call this law a "hypothetical syllogism."  Its       associated inference is ~ mp2b .       (A bit of trivia: this is the most commonly referenced assertion in our       database (13449 times as of 22-Jul-2021).  In second place is ~ eqid       (9597 times), followed by ~ adantr (8861 times), ~ syl2anc (7421 times),       ~ adantl (6403 times), and ~ simpr (5829 times).  The Metamath program       command show usage shows the number of references.)       (Contributed by NM, 30-Sep-1992.)  (Proof shortened by Mel L. OCat,       20-Oct-2011.)  (Proof shortened by Wolf Lammen, 26-Jul-2012.) $)    

syl $p |- ( ph -> ch ) $=      ( aa mpd ) X $.  
$}
' 