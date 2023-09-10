accessing
complete: x

	| aText |
	self halt.
	
	greenElement background: Color green .
	
	selectedMarkerElement background: Color green .
	
	mainBoard wantedResultElement model body = model body ifTrue: [ 
			
		aText := ' well done! ' asRopedText .
		aText fontSize: 30.
		aText foreground: Color green .
		textElement := (BlTextElement text: aText) constraintsDo: [ :c |c linear vertical alignCenter ].
		self addChild: textElement .
	
	] .
	
	"selectedMarkerElement removeFromParent .
	
	self addChildFirst: selectedMarkerElement"