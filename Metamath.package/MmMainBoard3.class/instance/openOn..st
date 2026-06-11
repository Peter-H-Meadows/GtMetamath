accessing
openOn: x

	| aTabGroup ell el eli |
	aTabGroup := BrTabGroup new.
	aTabGroup aptitude: BrGlamorousTabGroupAptitude new.

	self constraintsDo: [ :c | 
							c horizontal "exact: 500" matchParent.
							c vertical matchParent ].
	
	
"	aTabGroup
		addTab: (BrTab new
				aptitude: BrGlamorousTabAptitude new;
				label: 'Tab 1';
				stencil: [ BlElement new
						constraintsDo: [ :c | 
							c horizontal exact: 300.
							c vertical exact: 150 ];
						margin: (BlInsets all: 10);
						background: (Color red alpha: 0.2) ])."


				 
				 
				 
ell := BlElement new
			constraintsDo: [ :c | 
				c horizontal fitContent.
				"c vertical matchParent."
				c vertical fitContent.
				"c frame horizontal weight: 0.7 ."
				"c frame horizontal alignRight"
			];
			layout: 
				"GtGraphTreemapLayout squarify."
				"(BlGridLayout  new columnCount: 3)."
				BlLinearLayout vertical.
				
	ell background: Color veryDarkGray.
	
	x assertionsUsed
		do: [ :each | 
		| thing ton |
		thing := (AssertionAndEssentialHypothesisElement new initializeWith: each vcopy) "asScalableElement".
		
		eli := BlElement new.
eli addChild: thing "asScalableElement".

eli constraintsDo: [ :c | 
							c horizontal fitContent.
							c vertical fitContent ].

eli layout: BlLinearLayout vertical.
							
eli background: Color veryDarkGray.
							
eli aptitude: BrGlamorousWithVerticalResizerAptitude.
		
		ton := BrButton new
			aptitude: BrGlamorousButtonWithLabelAptitude new;
			label: 'moo';
			action: [  :aButtonElement :aButtonModel :anEvent |   aButtonElement transform
		scaleBy: 1.5@0.3;
		apply. ].
"ton
		constraintsDo: [ :c | 
			c frame horizontal alignRight.
			c frame vertical alignBottom ]."
			"
	hideButton background: Color veryVeryDarkGray."
	
	eli addChild: ton.
		
		
		ell addChild: eli "asScalableElement".
		
		
	"	x prevAssertions
						at: each name
						ifPresent: [ :ua | 

							| pp |
							pp := AssertionAndEssentialHypothesisElement new initializeWith: ua vcopy.	
							
							ell addChild: pp .
							
							]."
		
		
		].

	aTabGroup
		addTab: (BrTab new
				aptitude: BrGlamorousTabAptitude new;
				label: 'Tab 3';
				stencil: [ ell  "asPannableElement" ]).

el := AssertionAndEssentialHypothesisElement new initializeWith: x vcopy.					
				""
							
eli := BlElement new.
eli addChild: el asScalableElement.

eli constraintsDo: [ :c | 
							c horizontal fitContent.
							c vertical fitContent ].

eli layout: BlLinearLayout vertical.
							
eli background: Color veryDarkGray.
							
eli aptitude: BrGlamorousWithVerticalResizerAptitude.
				
				
		aTabGroup
		addTab: (BrTab new
				aptitude: BrGlamorousTabAptitude new;
				label: 'Tab 2';
				"background: Color veryDarkGray;"
				stencil: [ eli ]).			

self addChild: aTabGroup 