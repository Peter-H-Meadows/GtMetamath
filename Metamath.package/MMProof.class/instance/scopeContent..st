accessing
scopeContent: x
	self error.
	x do: [ :ea | ea addTo: self ]