accessing
paintTreeWith: view
	view nodes
		shape: [ :x | 
			| elly textElement |
			elly := BlElement new
				geometry: BlEllipseGeometry new;
				border: (BlBorder paint: Color black);
				constraintsDo: [ :c | 
				
					"c horizontal fitContent.
					c vertical fitContent."
					"c linear vertical alignCenter.
					c padding: (BlInsets all: 10)" ].
			"elly padding: (BlInsets all: 20).
			elly margin: (BlInsets all: 10)."
			
			
			"textElement := BlTextElement new.
			textElement
				text:
					(x depth asString asRopedText
						fontSize: 50;
						foreground: Color blue).
			elly addChild: textElement."
			
			
			
			elly ];
		with: (self withDeepCollect: #body).
		
	"view edges
		fromCenterBottom;
		toCenterTop;
		connectToAll: [ :ea | ea children ].
	view edges
		shape: [ :x | 
			BlLineElement new
				border: (BlBorder paint: (Color red alpha: 0.5) width: 5) ];
		passive;
		connectToAll: [ :ea | ea connects ]."
		
	view layout tree.
	^ view