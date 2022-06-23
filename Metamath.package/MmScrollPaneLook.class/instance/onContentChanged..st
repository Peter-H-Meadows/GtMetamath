private - hooks
onContentChanged: aContentStencil
	| aContentElement |
	
	aContentElement := aContentStencil asElement.
	aContentElement removeFromParent.
	
	scrollable scrolledElementDo: [ :aPreviousContent | aPreviousContent removeFromParent ].
	scrollable addChildFirst: aContentElement