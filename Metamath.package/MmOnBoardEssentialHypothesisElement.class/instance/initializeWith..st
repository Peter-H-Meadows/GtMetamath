accessing
initializeWith: aHypothModel
	| ee hideButton |
	model := aHypothModel.

	ee := BlElement new
			constraintsDo: [ :c | 
				c horizontal exact: 8.
				c vertical matchParent ];
			background: Color black.

	self addChild: ee.	"selectedMarkerElement background: Color gray ."
	self addChild: model body gameElement.
	self addChild: selectedMarkerElement.
	
	self addRightClickMenu.
	
	
self background: ( Color red ).

self addEventHandler: MmBoardListener new .

hideButton := BrButton new
			aptitude: BrGlamorousButtonWithLabelAptitude new;
			label: '>';
			action: [ "self halt. self removeFromParent "
			
				self announcer announce: (MmUseableSelectedAnnouncement new element: self) ].

	hideButton
		constraintsDo: [ :c | 
			c frame horizontal alignRight.
			c frame vertical alignBottom ].
			
	hideButton background: Color veryVeryDarkGray.
	
	self addChild: hideButton.
