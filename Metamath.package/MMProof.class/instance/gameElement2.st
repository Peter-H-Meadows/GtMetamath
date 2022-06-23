accessing
gameElement2

	| vertBox anAccordion anAccordion2 bb tBox |
	vertBox := BlElement new layout: BlLinearLayout vertical.

	vertBox padding: (BlInsets all: 4).
	vertBox margin: (BlInsets all: 4).

	vertBox constraintsDo: [ :c | 
		c horizontal matchParent.
		c vertical fitContent "matchParent" ].

	vertBox background: Color veryDarkGray.

	vertBox addChild:
		(AssertionAndEssentialHypothesisElement new initializeWith: self).

	anAccordion := BrAccordion new.
	anAccordion
		hMatchParent;
		vFitContent.

	anAccordion aptitude: BrGlamorousAccordionAptitude new.
	
	

	"anAccordion header: [ 
		BrButton new
			aptitude: BrGlamorousAccordionHeaderAptitude new;
			label: 'Click to expand/collapse';
			action: [ anAccordion toggleExpanded ] ].

	anAccordion content: [ MmCommentElement new createFromString: used substrings first . ].

	vertBox addChild: anAccordion."

	"vertBox addChild: (MmCommentElement new createFromString: used substrings first )."
	"
	anAccordion2 := BrAccordion new.
	anAccordion2
		hMatchParent;
		vFitContent.

	anAccordion2 aptitude: BrGlamorousAccordionAptitude new.

	anAccordion2 header: [ 
		BrButton new
			aptitude: BrGlamorousAccordionHeaderAptitude new;
			label: 'Click to expand/collapse';
			action: [ anAccordion2 toggleExpanded ] ].

	anAccordion2 content: [ 
		
	].
	vertBox addChild: anAccordion2."

	comments do: [ :ea | vertBox addChild: ea gameElement ].

	"withBlanksCondensed" "withSeparatorsCompacted"
	"used substrings first ."

	tBox := BlElement new layout: BlFlowLayout horizontal. "BlLinearLayout"

	tBox constraintsDo: [ :c | 
		c horizontal matchParent.
		c vertical fitContent ].

	vertBox addChild: tBox.
	
	bb := BrButton new
				      aptitude: BrGlamorousButtonWithLabelAptitude new;
				      label: 'game';
				      margin: (BlInsets all: 4);
				      action: [ :aButton | MmMainBoard new  openOn: self ].


			tBox addChild: bb.

	used ifNotNil: [ 
		used substrings do: [ :ea | 
			bb := BrButton new
				      aptitude: BrGlamorousButtonWithLabelAptitude new;
				      label: ea;
				      margin: (BlInsets all: 4);
				      action: [ :aButton | "aButton fireEvent: BrDropdownHideWish new" 
					      prevAssertions at: ea ifPresent: [ :aa | aa inspect ] ].


			tBox addChild: bb ].


		used substrings do: [ :ea | 
			prevAssertions at: ea ifPresent: [ :aa | 
				aa reparse.
				vertBox addChild:
					(AssertionAndEssentialHypothesisElement new initializeWith: aa) ] ] ].
	^ BrScrollPane new
		  aptitude:
			  BrScrollPaneAptitude + BrGlamorousWithVerticalScrollbarAptitude;
		  content: vertBox
	"^ vertBox"