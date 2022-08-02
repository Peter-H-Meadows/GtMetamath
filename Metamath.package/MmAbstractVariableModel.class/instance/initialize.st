accessing
initialize 
super initialize .

fixed := false .
mapped := false .

"isSuccess := false .
highlightStepDone := false ."

color := { 
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

} atRandom.


{
[ color muchDarker ]. [ color veryMuchLighter ]. []. } atRandom value.



count := 0.
mapCount := 0.
