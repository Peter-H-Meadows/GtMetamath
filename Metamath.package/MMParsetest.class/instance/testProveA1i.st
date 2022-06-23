tests
testProveA1i

| verse a1iProof |

verse := parser parse: '
$c ( $.
$c ) $.
$c -> $.
$c -. $.
$c wff $.
$c |- $. 

$v ph $.
$v ps $.
wph $f wff ph $.
wps $f wff ps $.

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

'.

self assert: verse assertions size equals: 3 . "axioms and proofs"

self assert: verse assertions first name equals: 'ax-mp' .

self assert: verse assertions first mands size equals: 2 .

self assert: verse assertions first mands first name equals: 'maj' .

self assert: verse assertions first mands second name equals: 'min' .

self assert: verse assertions last name equals: 'a1i' .

a1iProof := verse assertions last .

self assert: a1iProof mands size equals: 1 .

"self assert: a1iProof findProofOneStep equals: false .

self assert: a1iProof rootTryingSlot tryingThings size equals: 1 . "

"first step can only use ax-mp"


