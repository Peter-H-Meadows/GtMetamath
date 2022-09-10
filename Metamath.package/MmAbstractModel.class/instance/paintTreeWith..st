accessing
paintTreeWith: view
	view nodes
		shape: [ :x |  x gameElement ];
		with: (self withDeepCollect: #children).
		"with: (self children)."
		
	view edges
		fromCenterBottom;
		toCenterTop;
		connectToAll: [ :ea | ea children "parents"].
		
	view edges
		shape: [ :x | 
			BlLineElement new
				border: (BlBorder paint: (Color red alpha: 0.5) width: 5) ];
		passive;
		connectToAll: [ :ea | ea "parents" children ].
		
	view layout "radialTree" tree  "rectanglePack" "circle" "horizontalDominanceTree" "vertical".
	^ view