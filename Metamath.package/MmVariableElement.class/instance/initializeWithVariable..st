initialization
initializeWithVariable: aVariableModel
| aText |

model := aVariableModel.

model announcer when: MmHighlightAnnouncement send: #highlight: to: self.
model announcer when: MmVariableMappedAnnouncement send: #mapped: to: self.
model announcer when: MmFailedToMapAnnouncement send: #failedToMap: to: self.

"self  margin: (BlInsets all: 4).
self  padding: (BlInsets all: 4)."

"aVariable identityHash printString"

"geometryClass := model fixed ifTrue: [ BlRoundedRectangleGeometry ] ifFalse: [ BlCircle ] ."

	blob := BlElement new
		background: model color
		"border: (BlBorder paint: (Color blue alpha: 0.5) width: 6)" .
		"size: 30@30;"
		
	blob  margin: (BlInsets all: 4).	
		
	model isFixed ifTrue: [ ] ifFalse: [ 
	
		blob geometry: model geo 
	] .
	
"blob constraintsDo: [ :c | 
					c horizontal exact: 18  .
					c vertical exact: 18  .
					c linear horizontal  alignCenter .
					c linear vertical alignCenter ]."
					
"blob constraintsDo: [ :c | 
					c horizontal fitContent  .
					c vertical fitContent  .
					
					c linear horizontal  alignCenter]."
					
					
		model rotation ifNil: [model rotation: 180 atRandom].

				

"abDict := Dictionary newFromPairs: {'ph' . 'R' . 'ps' . 'G' . 'ch' . 'B' . 'th' . 'C'. 'ta' . 'E' . 'et' . 'F' . 'G' . 'ze'} ."

aText := model "name" letter asRopedText .

"aText := (abDict at: model name ifAbsent: ['z']) asRopedText ."

"aText := (model name , model identityHash printString) asRopedText ."

"aText foreground: Color blue ."

aText 
		fontSize: 18; bold ;
		foreground: (Color black);
		fontName: "'Bauhaus 93'" "'Curlz MT'" 'Phosphate'.

textElement := BlTextElement text: aText.
	
textElement constraintsDo: [ :c | 
	c frame vertical alignCenter . 
	c frame horizontal  alignCenter ].
	
"textElement  margin: (BlInsets all: 20)."

"blob layout: BlLinearLayout horizontal."

blob layout: BlFrameLayout new.

blob addChild: textElement .

blob size:  (model xxSize @ model yySize) .

		
		blob
		 transform
		rotateBy: model rotation ;
		apply.

"self addChild: textElement ."

self layout: BlLinearLayout vertical.

model isMapped ifTrue: [ 
	| box |
	box := BlElement new layout: BlLinearLayout vertical .

	box constraintsDo: [ :c | 
						c horizontal fitContent.
						c vertical fitContent ].

		box addChild: "model gameElement" blob .
	box addChild:  model mappedTo gameElement .

	55 atRandom = 11 ifTrue: [ self halt ].

	self addChild: box
	
] ifFalse: [ self addChild: blob ].

	"textElement := (BlTextElement text: aText) constraintsDo: [ :c | c linear horizontal alignCenter ].
	self addChild: textElement ."
	
self addMenu