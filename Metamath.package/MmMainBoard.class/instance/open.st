accessing
open

aSpace := BlSpace new
			extent: 1400 @ 800;
			title: 'GtMetamath'.

	aSpace root background: Color veryVeryDarkGray.
	
	"aSpace root addChild: ( MmMainBoard new openOn:  levels next ) ."
	
	"(aSpace addChild: (MmMainBoard new openOn: (Database allProofs at: 'a1i')))."
	
	self addRightClickMenu .

	aSpace show.