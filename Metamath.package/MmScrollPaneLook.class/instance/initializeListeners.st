initialization
initializeListeners
	super initializeListeners.
	
	self when: BrScrollableContentChanged do: [ :anEvent | self onContentChanged: anEvent contentStencil ].
	self when: BrScrollByWish do: [ :anEvent | self onScrollBy: anEvent ].
	self when: BrScrollToItemWish do: [ :anEvent | self onScrollToChild: anEvent ].