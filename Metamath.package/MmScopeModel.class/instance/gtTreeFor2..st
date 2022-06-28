accessing
gtTreeFor2: aView
	<gtView>
	^ aView columnedList
		title: 'list';
		items: assertionsDict values asArray;
		"send: [ :item |  ];"
		
		column: 'Name' text: #name width: 40;
		column: 'N'
			text: [ :proof | proof printString ]
			"width: 120"
			"column: 'Commit' text: #name width: 70;
			 column: 'Author' text: #name width: 100;"	"asElement"