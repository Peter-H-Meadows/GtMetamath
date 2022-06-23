accessing
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
			
			"anEvent
				selectedDo: [ :anInterval | anEvent target look listElement scrollToPosition: anInterval last ]."
				
				"
			anEvent
				deselectedDo: [ :anInterval | self inform: 'Deselected: ' , anInterval asString ]" 
				
].
		
aList background: Color veryVeryDarkGray .

^ aList

