accessing
open2
<gtExample>
	
	aSpace := BlSpace new
			extent: 1400 @ 800;
			title: 'GlamorousMetamath'.

	"aSpace root background: Color darkGray."
	
	
	aSpace root addChild: ( MmMainBoard new openOn:  levels next ) .
	
	"(aSpace addChild: (MmMainBoard new openOn: (Database allProofs at: 'a1i')))."
	
	self addRightClickMenu .

	aSpace show.