accessing
newLook

letter := ('ABCDEFGHIJKLMNPRSTVWYabcdefghijklmnprst' atRandom) asString ,
('oeiua' atRandom ) asString.
	
	color := Color random.
	

geo := {BlRoundedRectangleGeometry .BlRectangleGeometry. BlTriangleGeometry. BlEllipseGeometry} atRandom new .
	
xxSize := 40 + 20 atRandom .

yySize := 40 + 20 atRandom .

"7 atRandom = 1 ifTrue: [ showName := true ]."

"geo := 
		(BlTriangleGeometry new perform: 
		#(beTop beBottom beLeft beRight) atRandom)."
		
		"7 atRandom = 1 ifTrue: [ geo := BlCircleGeometry new ] ."
