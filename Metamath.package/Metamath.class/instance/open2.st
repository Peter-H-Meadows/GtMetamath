accessing
open2
<gtExample>

	| morph |
	aSpace := BlSpace new
			extent: 1400 @ 800;
			title: 'GtMetamath'.

	aSpace root background: Color veryVeryDarkGray.

	aSpace show.
	
	level := 11 .
	
	morph := MmMainBoard2 new openOn: (Database allProofs asArray at: level).
	aSpace addChild: morph.
	
	
	self addRightClickMenu .
	