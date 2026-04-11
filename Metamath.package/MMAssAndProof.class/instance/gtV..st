accessing
gtV: aView
<gtView>
	self parse.

	^ aView explicit
		title: 'interactive';
		stencil: [ self vcopy openOnMainBoard ]