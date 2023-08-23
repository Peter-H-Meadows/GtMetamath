accessing
initializeWith: aHypothModel
	| greenBar hideButton |
	
	"we only use this element for fixed ehypoths that we can use."
	
	model := aHypothModel.

	greenBar := BlElement new
			constraintsDo: [ :c | 
				c horizontal exact: 8.
				c vertical matchParent ];
			background: Color green.

	self addChild: greenBar.
	self addChild: model body gameElement.
	self addChild: selectedMarkerElement.
	
	"selectedMarkerElement background: Color gray ."
	
	self addRightClickMenu.
	
	
self background: ( Color darkGray ).

self addEventHandler: MmBoardListener new .

"hideButton := BrButton new
			aptitude: BrGlamorousButtonWithLabelAptitude new;
			label: '>';
			action: [
			
				self announcer announce: (MmUseableSelectedAnnouncement new element: self) ].

	hideButton
		constraintsDo: [ :c | 
			c frame horizontal alignRight.
			c frame vertical alignBottom ].
			
	hideButton background: Color veryVeryDarkGray.
	
	self addChild: hideButton."
