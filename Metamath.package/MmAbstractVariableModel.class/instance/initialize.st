accessing
initialize 
super initialize .

fixed := false .
mapped := false .
showName := false .

"isSuccess := false .
highlightStepDone := false ."

letter := ('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnpqrstu?' atRandom) asString ,
('oeiua' atRandom ) asString.

{'Mo'. 'me'. 'Mi'. 'ma'. }. 


xxSize := 40 + 20 atRandom .

yySize := 40 + 20 atRandom .


letter2 := 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnpqrstu?' atRandom .


self newLook .


"color := { 
Color random .
Color purple.
Color  brown .
Color  lightCyan .
Color  yellow. 
Color red . 
Color blue . 
Color green . 
Color orange . 
Color veryLightGray . 
Color  magenta .

} atRandom."

"ColorCycle atEnd ifTrue: [ ColorCycle reset ].
color := ColorCycle next ."

color := Color red .

color := { [ color muchDarker ]. [ color veryMuchLighter ]. [color]. } atRandom value.

count := 0.
mapCount := 0.