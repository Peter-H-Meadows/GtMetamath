accessing
eel

	| anAccordion |
	anAccordion := BrAccordion new.
	anAccordion
		hMatchParent;
		vFitContent.

	anAccordion aptitude: BrGlamorousAccordionAptitude new.
	anAccordion header: [ 
		BrButton new
			aptitude: BrGlamorousAccordionHeaderAptitude new;
			label: body;
			action: [ anAccordion toggleExpanded ] ].
	anAccordion content: [ 
		BrEditor new
			aptitude: BrGlamorousEditorAptitude new;
			text: body ].

	^ anAccordion