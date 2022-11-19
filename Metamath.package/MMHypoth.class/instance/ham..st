accessing
ham: assertions
	| ass |
	"essentialHypoths second "
	assertions asArray do: [ :ea | 
		
			Transcript next
		tab;
		color: Color blue;
		fontSize: 20;
		putAll: ea ;
		cr.
		].