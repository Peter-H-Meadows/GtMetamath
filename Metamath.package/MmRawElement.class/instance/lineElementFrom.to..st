as yet unclassified
lineElementFrom: aSourceElement to: aTargetElement

	| aLineElement |
	aLineElement := BlParabollaArcElement new.
	aLineElement curvatureFraction: 0.2.
	aLineElement zIndex: 10.
	aLineElement toHead: (BlArrowheadSimpleArrow new
					border: (BlBorder builder paint: (Color gray alpha: 0.2); width: 5; build)).
	aLineElement constraints ignoreByLayout.
	aLineElement
		border: (BlBorder paint: (Color red alpha: 0.8) width: 5);
		fromAnchor: (BlElementBottomCenterAnchor element: aSourceElement);
		toAnchor: (BlElementTopCenterAnchor  element: aTargetElement).
		
	^ aLineElement