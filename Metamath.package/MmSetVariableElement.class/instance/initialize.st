accessing
initialize
	super initialize.
	self background: Color red .
	self size: 12@12.
	
	self geometry: BlCircleGeometry new .
	
	self margin: (BlInsets all: 8).