accessing
initialize
	super initialize.
	defaultColor := self theme button defaultTextColor.
	selectedColor := self theme button hoveredTextColor.
	hoveredColor := Color red.
	pressedColor := self theme button pressedTextColor.
	self
		weight: 400;
		fontName: 'Cambria Math'.