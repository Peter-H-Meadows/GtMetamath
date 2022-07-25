initialization
initializeWithVariable: aVariableModel
| aText |

model := aVariableModel .

model announcer when: MmHighlightAnnouncement send: #highlight: to: self.
model announcer when: MmVariableMappedAnnouncement send: #mapped: to: self.
model announcer when: MmFailedToMapAnnouncement send: #failedToMap: to: self.

"self  margin: (BlInsets all: 4)."

"aVariable identityHash printString"

"col := Colors at: aVariable name ifAbsentPut: [ Color random ] ."
	
	"geometryClass := model fixed ifTrue: [ BlRoundedRectangleGeometry ] ifFalse: [ BlCircle ] ."

	blob := BlElement new
		"geometry: BlSquare new;"
		"geometry: geometryClass new;"
		background: model color
		"border: (BlBorder paint: (Color blue alpha: 0.5) width: 6)" ;
		"size: 30@30;"
		constraintsDo: [ :c | 
					c horizontal exact: 16 "fitContent" .
					c vertical exact: 16 "fitContent" .
					c linear horizontal  alignCenter .
					c linear vertical alignCenter ].
	
		
	model fixed ifTrue: [ "blob geometry: BlRoundedRectangleGeometry new"] ifFalse: [ 
	
		blob geometry: BlCircleGeometry new
	] .
	
				

"abDict := Dictionary newFromPairs: {'ph' . 'R' . 'ps' . 'G' . 'ch' . 'B' . 'th' . 'C'. 'ta' . 'E' . 'et' . 'F' . 'G' . 'ze'} ."

"aText := (model name , model identityHash printString) asRopedText ."

aText := model name asRopedText .

"blob background: Color gray."

"aText := (abDict at: model name ifAbsent: [  'z']) asRopedText ."

aText fontSize: 18.
aText foreground: Color black .

textElement := (BlTextElement text: aText) constraintsDo: [ :c | c linear vertical alignCenter . c linear horizontal  alignCenter ].
textElement  margin: (BlInsets all: 8).

blob layout: BlLinearLayout horizontal  .

"blob addChild: textElement ."

				
self addChild: blob .

model mapped ifTrue: [ 
	
	
	"box := BlElement new layout: BlLinearLayout horizontal .

	box constraintsDo: [ :c | 
						c horizontal fitContent.
						c vertical fitContent ].

	model mappedTo do: [ :ea |
		box addChild: ea gameElement
	]."


	self addChild: model mappedTo gameElement.
	
	
] .


	"textElement := (BlTextElement text: aText) constraintsDo: [ :c | c linear horizontal alignCenter ].
	self addChild: textElement ."
	



	"model fixed ifTrue: [  
			
		
		aText := '+' asRopedText .
		aText fontSize: 20.
		aText foreground: Color black   .
		textElement := (BlTextElement text: aText) constraintsDo: [ :c | c linear vertical alignCenter ]."

		"textElement := BlElement new background: (Color black) ; constraintsDo: [ :c | 
		c vertical exact: 4. 
		c horizontal matchParent . 
		c linear vertical alignCenter ].


		blob layout: BlLinearLayout horizontal  .
		blob addChild: textElement .	
			
	] ."


self addMenu
