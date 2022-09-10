accessing
paintTreeWith: view
	view nodes
		shape: [ :x |  x gameElement ];
		with: (self withDeepCollect: #body).
		
	view edges
		fromCenterBottom;
		toCenterTop;
		connectToAll: [ :ea | ea children ].
		
	view edges
		shape: [ :x | 
			BlLineElement new
				border: (BlBorder paint: (Color red alpha: 0.5) width: 5) ];
		passive;
		connectToAll: [ :ea | ea parents ].
		
	view layout tree.
	^ view