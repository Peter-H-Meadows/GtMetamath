as yet unclassified
initCardLeft

	listo := BrSimpleList new .
	listo	itemStencil: [ MmAssertionElement new ];
		itemDataBinder: [ :eachElement :eachClass :eachIndex | eachElement initializeWith:  eachClass  ].

		resultPane := BlElement new .
		resultPane aptitude: BrGlamorousWithVerticalResizerAptitude
			+ BrGlamorousWithHorizontalResizerAptitude new beLeft.
		resultPane constraintsDo: [ :c | 
				c horizontal fitContent.
				"c vertical fitContent."
				c frame horizontal alignRight.
				c frame vertical alignTop
			].
			
			resultPane background: Color transparent.
			
			resultPane layout: BlLinearLayout vertical.
			
			"self addChild: resultPane ."
		
leftPane2 := BrCard new.
leftPane2
	size: 750 @ 480;
	aptitude: BrShadowAptitude + BrTextLabelAptitude + BrIconAptitude + BrDescriptionAptitude
			+ BrGlamorousWithVerticalResizerAptitude
			+ BrGlamorousWithHorizontalResizerAptitude new beLeft;
	background: Color transparent;
	"margin: (BlInsets all: 10);"
	padding: (BlInsets all: 10);
	layout: BlLinearLayout vertical;
	"title: 'GToolkit in Pharo' asRopedText bold;"
	"description: ((String loremIpsum: 200) asRopedText
			foreground: Color gray;
			fontSize: 10;
			readonly);"
			
	"picture: listo;"
	
	action: [ :aBrCard | leftPane2 inform: 'Hey! I am a card' ].
"aTitleElement := anElement childNamed: #label.
aPictureElement := anElement childNamed: #icon.
aDescriptionElement := anElement childNamed: #description.
example assert: aTitleElement notNil.
example assert: aPictureElement notNil.
example assert: aDescriptionElement notNil."
leftPane2
constraintsDo: [ :c | 
				c horizontal fitContent.
				"c vertical fitContent."
				c frame horizontal alignRight.
				c frame vertical alignTop
			]";
			layout: BlLinearLayout vertical".
			
			"self addLevelButton."	
			"leftPane addChild: BlElement new ."

	"self addChild: leftPane2"
