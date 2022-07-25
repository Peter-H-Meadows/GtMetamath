accessing
open
	| aSpace |
	aSpace := BlSpace new
			extent: 1400 @ 800;
			title: 'GlamorousMetamath'.

	aSpace root background: Color darkGray.
	
	(aSpace addChild: (MmMainBoard new openOn: (Database allProofs at: 'a1i'))).

	aSpace show.