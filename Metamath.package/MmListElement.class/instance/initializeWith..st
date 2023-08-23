initialization
initializeWith: aModel
	model := aModel.	"model announcer when: MmHighlightAnnouncement send: #highlight to: self .
	model announcer when: MmFailedToMapAnnouncement send: #failedToMap: to: self."

	(model body class canUnderstand: #do:)
		ifTrue: [ "self halt." model body first name = '('
				ifTrue: [ self geometry: BlEllipseGeometry new.

					self padding: (BlInsets all: 8).

					self border: (BlBorder paint: Color gray width: 1) ].

			model body first name = '['
				ifTrue: [ self geometry: BlEllipseGeometry new.

					self padding: (BlInsets all: 8).

					self border: (BlBorder paint: Color black width: 1) ].

	model body do: [ :ea | 
		self addChild: (ea gameElement constraintsDo: [ :c | c linear vertical "alignBottom" alignCenter ]) 
	] 

] ifFalse: [ self addChild: model body gameElement ]