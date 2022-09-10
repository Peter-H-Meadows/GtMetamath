accessing
gtDependenciesMapFor: aView
	<gtView>
	^ aView mondrian
	title: 'Map';
	priority: 1110;
	painting: [ :mondrian | 
		mondrian nodes 
			shape: [ :each |
				| textElement |
				textElement := BlTextElement new.
				textElement text: each printString asRopedText.
				textElement."
				
				each gameElement ."
				
			];
		  with: ( self withDeepCollect: #body).
		
		mondrian edges connectToAll: #body .
		
		"mondrian edges 
			shape: [ 
				BlParabollaArcElement new 
					zIndex: 0;
					curvatureFraction: 0.2;
					border: (BlBorder paint: (Color gray alpha: 0.2) width:2 );
					toHead: (BlArrowheadSimpleArrow new
						border: (BlBorder builder paint: (Color gray alpha: 0.2); width:2; build)) ];
			fromRightCenter;
			toLeftCenter;
			connectFrom: #yourself
			toAll: [ :each | |usedPackages | 
				usedPackages := each body]."
		
		mondrian layout tree "custom: (GtGradHorizontalTreeLayout new)".
	]