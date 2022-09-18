deprecated
openAllInDoc

| aList aEventListener  aDocument aFigureFile |
<gtExample>
	
	"aFigureFile := self figureFileReference."
	
	"aDocument := self defaultDocument fileReference: self fileReferenceWithFigure."
	
	aDocument := GtDocumenter new.
	aDocument editor useSyncStylerStrategy.	
	"documents add: aDocument."
	
	
	aDocument text: '${example:MmGame>>#bl}$'.
	
	
	aDocument read.
	
	

rs := ReadStream on: self database sections .

"aList := BrSimpleList new.

aList stencil: [ :each :index | 
			each isComment ifTrue: [ each gameElement ] ifFalse: [  

				aEventListener := MmStartEventListener new .
				each usableElement addEventHandler: aEventListener .
			]
		].
aList items: self database allThings ."
	
^ aDocument
