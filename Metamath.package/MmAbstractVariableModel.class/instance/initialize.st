accessing
initialize 
super initialize .

fixed := false .
mapped := false .
showName := false .

7 atRandom = 1 ifTrue: [ showName := true ].

geo := 
		(BlTriangleGeometry new perform: 
		#(beTop beBottom beLeft beRight) atRandom).
		
		7 atRandom = 1 ifTrue: [ geo := BlCircleGeometry new ] .

"isSuccess := false .
highlightStepDone := false ."

letter := 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz' atRandom .

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

ColorCycle atEnd ifTrue: [ ColorCycle reset ].
color := ColorCycle next .
color := { [ color muchDarker ]. [ color veryMuchLighter ]. [color]. } atRandom value.



count := 0.
mapCount := 0.
