as yet unclassified
gtInteractiveView: aView
	<gtView>

	"self reparse."

	^ aView explicit 
		title: 'intera';
		stencil: [ self gameElement ]