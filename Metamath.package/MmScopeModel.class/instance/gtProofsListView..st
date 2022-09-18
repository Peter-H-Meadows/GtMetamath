accessing
gtProofsListView: aView
	<gtView>
	^ aView columnedList
		title: 'Proofs';
		priority: 1 ;
		items: assertionsDict values asArray;
		"send: [ :item |  ];"
		
		column: 'Name' text: #name width: 40;
		column: ''
			text: [ :proof | proof printString ]
			"width: 120"
			"column: 'Commit' text: #name width: 70;
			 column: 'Author' text: #name width: 100;"	"asElement"