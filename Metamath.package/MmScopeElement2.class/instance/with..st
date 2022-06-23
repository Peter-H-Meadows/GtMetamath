accessing
with: aScopeModel

	| aList |
	model := aScopeModel.

	self
		hMatchParent;
		vFitContent.

	self aptitude: BrGlamorousAccordionAptitude new.

	self header: [ 
		BrButton new
			aptitude: BrGlamorousAccordionHeaderAptitude new;
			label: model title;
			action: [ self toggleExpanded ] ].

	self content: [ "BrEditor new
			look: BrGlamorousEditorLook new;
			text: (String loremIpsum: 200) trimBoth ""self toggle ."
		aList := BrSimpleList new.

		aList stencil: [ :ea :index | "anAccordion :=" "MmScopeElement2 new with: ea ." 
			ea eel ].

		aList items: model stuff.

		aList ]