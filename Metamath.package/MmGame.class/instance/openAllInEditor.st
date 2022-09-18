dep
openAllInEditor

| aList aEventListener  aDocument aFigureFile editor txt text ed runner anAccordion |
<gtExample>
	
	editor := BrTextEditorModel new. " beLineBased"
	
	"aFigureFile := self figureFileReference."
	
	"aDocument := self defaultDocument fileReference: self fileReferenceWithFigure."
	
	txt := BlRopedText string: 'first', String cr, 'second', String cr, 'third'.
	
	
editor text: txt.
	
	txt append: 'moooo' asRopedText .
	"
	 self database sections inspect ."
	 

ed := BrEditorElement new 
				editor: editor;
				padding: (BlInsets all: 10);
				constraintsDo: [ :c | 
					c horizontal matchParent.
					c vertical matchParent ] ; yourself .

text := 'You can click on this.' asRopedText.
	(text from: 9 to: 13)
		attributes:
			{(BlTextForegroundAttribute new paint: Color blue).
			(BrTextHoverStylableAttribute new
				attribute: (BlTextUnderlineAttribute new color: Color blue)).
			(BrTextClickAttribute new
				action:
					[ :aTBrTextEditorTextualPiece :aTarget :aTextEditor :anEvent | 
					"GtInspector openOn: aTBrTextEditorTextualPiece text" 
					"aTextEditor scrollToPosition: 444"
					"aTextEditor select: 4440 to: 4450 ."
					"aTextEditor navigator moveDown" .
					
					"self scrollToPosition: self editor segmentCollector computedSegmentsCount."
					
					"ed scrollToLast" "scrollToPosition: 3333" .
					ed scrollToPosition: 333.
					])}.
	 
	 txt append: text .
	

runner := TKTLocalProcessTaskRunner new.

"runner exceptionHandler: (TKTTestExceptionHandler new)."
	
runner schedule: [ "10 milliSeconds wait. finished := true" 
	 
self scopes do: [:ea | 
	 
	 "self halt."
	 
	 "just use simp list on scopes"
	 
	 
	 "ea isComment ifTrue: [ 
	 	 txt append: (String cr , ea body , String cr, '.') asRopedText .
	 ] ifFalse: [
	 	 
	 (txt from: txt size to: txt size) attribute:
		(BrTextAdornmentDynamicAttribute new
			beAppend;
			stencil: [
				aEventListener := MmStartEventListener new .
				ea usableElement addEventHandler: aEventListener ]).
	]."
	 
].


] "timeout: 50 milliSeconds".

"
rs := ReadStream on: self database sections ."


aList := BrSimpleList new.

aList stencil: [ :eachScope :index |

	anAccordion := MmScopeElement2 new with: eachScope .
	

			"anAccordion"

			"each isComment ifTrue: [ each gameElement ] ifFalse: [  

				aEventListener := MmStartEventListener new .
				each usableElement addEventHandler: aEventListener .
			]"
		].
		
aList items: self scopes .
	
^ aList
