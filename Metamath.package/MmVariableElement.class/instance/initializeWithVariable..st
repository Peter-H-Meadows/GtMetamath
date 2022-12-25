initialization
initializeWithVariable: aVariableModel
| aText |

model := aVariableModel.

model announcer when: MmHighlightAnnouncement send: #highlight: to: self.
model announcer when: MmVariableMappedAnnouncement send: #mapped: to: self.
model announcer when: MmFailedToMapAnnouncement send: #failedToMap: to: self.

"self  margin: (BlInsets all: 4)."

"aVariable identityHash printString"

"geometryClass := model fixed ifTrue: [ BlRoundedRectangleGeometry ] ifFalse: [ BlCircle ] ."

	blob := BlElement new
		background: model color
		"border: (BlBorder paint: (Color blue alpha: 0.5) width: 6)" ;
		"size: 30@30;"
		constraintsDo: [ :c | 
					c horizontal "exact: 16" fitContent .
					c vertical "exact: 16" fitContent .
					c linear horizontal  alignCenter .
					c linear vertical alignCenter ].
	
		
	model isFixed ifTrue: [ ] ifFalse: [ 
	
		blob geometry: model geo 
	] .
	
				

"abDict := Dictionary newFromPairs: {'ph' . 'R' . 'ps' . 'G' . 'ch' . 'B' . 'th' . 'C'. 'ta' . 'E' . 'et' . 'F' . 'G' . 'ze'} ."

""

aText := model "name" letter asRopedText .

"blob background: Color gray."

"aText := (abDict at: model name ifAbsent: [  'z']) asRopedText ."

aText := (model name , model identityHash printString) asRopedText .

aText fontSize: 18.
aText foreground: Color black .

textElement := (BlTextElement text: aText) constraintsDo: [ :c | c linear vertical alignCenter . c linear horizontal  alignCenter ].
textElement  margin: (BlInsets all: 18).

blob layout: BlLinearLayout horizontal.

blob addChild: textElement .
				


model isMapped ifTrue: [ 
	
	
	"box := BlElement new layout: BlLinearLayout horizontal .

	box constraintsDo: [ :c | 
						c horizontal fitContent.
						c vertical fitContent ].

	model mappedTo do: [ :ea |
		box addChild: ea gameElement
	]."

	55 atRandom = 11 ifTrue: [ self halt ].

	self addChild: model mappedTo gameElement.
	
	
	
] ifFalse: [self addChild: blob .].


	"textElement := (BlTextElement text: aText) constraintsDo: [ :c | c linear horizontal alignCenter ].
	self addChild: textElement ."
	
self addMenu
