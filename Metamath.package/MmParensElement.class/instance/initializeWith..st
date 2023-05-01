initialization
initializeWith: mod 

	model := mod . 

	self addChild: (model body gameElement constraintsDo: [ :c | c linear vertical alignCenter ]).
