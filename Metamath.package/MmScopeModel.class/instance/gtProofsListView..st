accessing
gtProofsListView: aView
	<gtView>
	| list |
	list := aView columnedList title: 'Proofs'.
	list priority: 1.
	list items: assertionsDict values asArray.	"send: [ :item |  ];"	"list items: Color indexedColors."


	list column
		width: 50;
		title: 'Index';
		stencil: [ :aColor :aRowIndex | 
			| col |
			col := Color indexedColors atRandom.

			BrLabel new
				aptitude: (BrGlamorousLabelAptitude new foreground: col contrastingBlackAndWhiteColor);
				text: aRowIndex asString;
				background: col;
				padding: (BlInsets all: 4) ].



	list
		column: 'Name'
		text: #name
		width: 40.

	list column
		width: 900;
		title: 'pii';
		stencil: [ :aProof :aRowIndex | 
			| col |
			"aProof body" nil
				ifNil: [ BrLabel new
						aptitude: BrGlamorousLabelAptitude new;
						text: aProof body asString;
						padding: (BlInsets all: 4)	"foreground: col contrastingBlackAndWhiteColor);"	"background: col;" ]
				ifNotNil: [ col := Color indexedColors atRandom.


					aProof vcopy body gameElement background: Color black ] ].	"		list column: 'prrr'
			text: [ :proof | proof printString ]."

	^ list	"width: 120"	"column: 'Commit' text: #name width: 70;
			 column: 'Author' text: #name width: 100;"	"asElement"