as yet unclassified
initializeWith: aModel
	model := aModel.	

	model stuff do: [ :ea | 
		self addChild: (ea gameElement constraintsDo: [ :c | c linear vertical "alignBottom" alignCenter ]) 
	] 
