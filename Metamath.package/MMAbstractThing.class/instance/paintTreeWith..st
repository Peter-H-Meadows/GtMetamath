accessing
paintTreeWith: view
	view nodes
		shape: [ :x | 
			| elly textElement |
			elly := BlElement new
				geometry: BlEllipseGeometry new;
				border: (BlBorder paint: Color black);
				constraintsDo: [ :c | 
				
					c horizontal fitContent.
					c vertical fitContent.
					
					"c linear vertical alignCenter.
					c padding: (BlInsets all: 10)" 
				].
				
			elly padding: (BlInsets all: 20).
			elly margin: (BlInsets all: 10).
			
			
			textElement := BlTextElement new.
			textElement
				text:
					(x asString asRopedText
						fontSize: 18;
						foreground: Color blue).
			elly addChild: textElement.
			
			elly addChild: x gameElement.
			
			
			
			elly.  ];
		with: ( "{self}" "self withDeepCollect: #body" self essentialHypoths).
		
	"view edges
		fromCenterBottom;
		toCenterTop;
		connectToAll: [ :ea | ea children ]."
		
	"view edges
		shape: [ :x | 
			BlLineElement new
				border: (BlBorder paint: (Color red alpha: 0.5) width: 5) ];
		passive;
		connectToAll: [ :ea | ea connects ]."
		
	view layout tree.
	^ view