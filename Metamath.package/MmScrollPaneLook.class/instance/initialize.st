initialization
initialize
	super initialize.

	scrollable := MmScrollableElement  new.	
	self add: (BrLayoutResizerAptitude inherit inherit: scrollable).
	self addChangeAddChildAs: #(content scrollable) with: [ scrollable ].

	self
		addChangeProperty: #(widgetContent layout)
		with: [ BlLinearLayout vertical ]