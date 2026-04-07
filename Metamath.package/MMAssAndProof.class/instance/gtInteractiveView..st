accessing
gtInteractiveView: aView
	"<gtView>"

	"self reparse."

	^ aView explicit 
		title: 'interactive';
		stencil: [ MmMainBoard new  openOn: self vcopy "self gameElement2" ]