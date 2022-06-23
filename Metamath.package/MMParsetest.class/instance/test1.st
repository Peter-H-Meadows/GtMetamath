tests
test1

| verse |

verse := parser parse: '
$(m$) $( $) $(  m $)
$(  x $)
$c ( $.  $( Left parenthesis $)
  $c ) $.  $( Right parenthesis $)
  $c -> $. $( Right arrow (read:  implies) $)
  $c -. $. $( Right handle (read:  not) $)
  $c wff $. $( Well-formed formula symbol (read:  the following symbol
               sequence is a wff) $)
  $c |- $. 


  $c & $. $( Ampersand (read: and-also) $)
  $c => $. $( Big-to (read: proves) $)

  $( wff variable sequence:  ph ps ch th ta et ze si rh mu la ka $)
  $( Introduce some variable names we will use to represent well-formed
     formulas (wffs). $)

  $v ph $.  $( Greek phi $)
  $v ps $.  $( Greek psi $)

 wph $f wff ph $.
  wps $f wff ps $.


  ${
    $( Minor premise for modus ponens. $)
    min $e |- ph $.
    $( Major premise for modus ponens. $)
    maj $e |- ( ph -> ps ) $.

    ax-mp $a |- ps $.
  $}' .

self assert: verse assertions size equals: 1 .

self assert: verse assertions first name equals: 'ax-mp' .

self assert: verse assertions first mands size equals: 2 .

self assert: verse assertions first mands first name equals: 'maj' .

self assert: verse assertions first mands second name equals: 'min' .
