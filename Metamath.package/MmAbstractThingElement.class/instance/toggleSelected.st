as yet unclassified
toggleSelected 

selectedMarkerElement ifNil: [ self highlightAsSelected . ^ true ] ifNotNil: [ 
	
	self unhighlightAsSelected .
	^ false
	
 ]