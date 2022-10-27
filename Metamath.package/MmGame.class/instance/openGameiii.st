dep
openGameiii

| aList aEventListener |

rs := ReadStream on: self database sections .

aList := BrSimpleList new.

aList stencil: [ :each :index | 
			each isComment ifTrue: [ each gameElement ] ifFalse: [  

				aEventListener := MmStartEventListener new .

				each usableElement addEventHandler: aEventListener .
			
			]
		].
			
aList items: self database allThings .
		
aList when: BrSelectionChanged
		do: [ :anEvent | 
				
				"anEvent target look listElement scrollToPosition: anEvent selectedInterval last ."
			
			anEvent target look listElement scrollToPosition: rs next .
				
].
		
aList background: Color veryVeryDarkGray .

^ aList
