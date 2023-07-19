accessing
initializeWith: m

	model := m .
	
	
	model name = 'x' ifTrue: [ self background: Color blue . ].

		model name = 'y' ifTrue: [ self background: Color yellow . ].
	