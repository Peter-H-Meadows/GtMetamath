initialization
initializeWith: aModel

	| aText textElement col fs content bb proof aLabelLook |
	model := aModel.
	content := BrLabel new alignCenter.

	"look: (BrGlamorousLabelLook new glamorousRegularFontAndSize);
		padding: (BlInsets all: 20);
		text: '..';"

	"self aptitude: (BrGlamorousButtonWithLabelAptitudeMm content: content)."

	name := model name.

	name := Dict at: name ifAbsent: [ name ].

	aText := name asRopedText fontName: 'Cambria Math'.
	"bold ;"

	aText fontSize: 20.
	"aText foreground: col."

	aText foreground: Color veryLightGray.
	
	aLabelLook := BrTextLabelAptitude new.
	aLabelLook
		bold;
		fontName: 'Source Sans Pro'.

	bb := BrButton new
		      "aptitude: BrGlamorousButtonWithIconAptitude;"
		      "aptitude: (BrGlamorousWithTooltipAptitude content: 'content') ;"
		      label: aText;
		      aptitude: BrGlamorousButtonWithLabelAptitudeMm new ;
		      "aptitude: aLabelLook ;"
		      action: [ :aButton | 
		      	"model openWin"
		      	"(MmPP2ParserFirst ap at: 'df-' , name ) inspect ."
		      	"if name is char...? name = i^i ??? "
		      	model openDef
		      	"model inspect .
			      proof := MmPP2ParserFirst ap
				               at: 'w' , name asString asLowercase
				               ifAbsent: [ MmPP2ParserFirst ap at: 'df-' , name ].

			      proof inspect ."
			      
			      ].
	"aptitude: BrGlamorousButtonWithLabelAptitudeMm new;"
	"aptitude: BrGlamorousButtonWithLabelAptitude new;" "aText"

	
	
	
	
	aText := name asRopedText fontName: 'Cambria Math'.
	"bold ;"

	aText fontSize: 22.
	"aText foreground: col."

	aText foreground: Color lightGray.

	textElement := (BlTextElement text: aText) constraintsDo: [ :c | 
		               c linear vertical alignCenter ].
	textElement margin: (BlInsets all: 4).
	
	self addChild: textElement.

	"self addChild: bb"