accessing
open6
<gtExample>
	
	aSpace := BlSpace new
			extent: 1400 @ 800;
			title: 'GlamorousMetamath'.

	"aSpace root background: Color darkGray."
	
	levels := ReadStream on: Database proofs "allProofs asOrderedCollection" "reversed" .
	
	levels next.
	
	aSpace root addChild: ( MmMainBoard new openOn:  levels next ) .
	
	"(aSpace addChild: (MmMainBoard new openOn: (Database allProofs at: 'a1i')))."
	
	self addRightClickMenu .

	aSpace show.