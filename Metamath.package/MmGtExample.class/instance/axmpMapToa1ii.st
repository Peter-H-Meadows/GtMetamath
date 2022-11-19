example
axmpMapToa1ii
<gtExample>

| axmp a1i ph ps usableAssertion proofToDo usableAssertionCopy ax1 axmp2 ph2 ps2 |
axmp := self axMpFirst copy .

a1i := self a1i copy setAllVariablesToFixed .

"self assert: (a1i canMapTo: axmp) equals: true ."


self assert: ( axmp canMapTo: a1i) equals: true .


self assert: ( axmp canMapTo: a1i) equals: true .

ax1 := self ax1 copy .

self assert: ( ax1 canMapTo: a1i) equals: false .


self assert: ( a1i canMapTo: ax1) equals: false .

ph := axmp varObs asArray first .

self assert: ( ph name ) equals: 'ph' .

ps := axmp varObs asArray second .

proofToDo := a1i .


self assert: ( ph isFreeVar ) equals: true .

self assert: ( ps isFreeVar ) equals: false .

self assert: ( ps isMappedVar ) equals: true .

"self assert: axmp localVariables anyOne isMapped equals: true ."
self assert: (
axmp essentialHypoths first canMapTo: ax1) equals: true .

self assert: (
axmp essentialHypoths second canMapTo: ax1) equals: false .


axmp2 := axmp copy .

ph2 := axmp2 varObs asArray first .
ps2 := axmp2 varObs asArray second .
"self assert: ( ph2 isFreeVar ) equals: true ."
self assert: ( ps2 isFreeVar ) equals: false .
self assert: ( ps2 isMappedVar ) equals: true .

self assert: ( a1i prevAssertions size ) equals: 2 .

	a1i prevAssertions do: [ :each | 
		
			usableAssertion := each copy.
			
			"Transcript next tab;
			color: Color random;
			fontSize: 21;
			putAll: usableAssertion ;
			cr."
	
	
	"(proofToDo prevAssertions at: each name) "
	
		Transcript next
		tab;
		color: Color gray;
		fontSize: 18;
		putAll: 'trying with: ' ;
		putAll: usableAssertion ;
		cr.

		
		"self halt ."
		
		
		(usableAssertion canMapTo: proofToDo) ifTrue: [ 
		
			usableAssertionCopy := usableAssertion copy.
			
			"self halt."
			Transcript next
		tab;
		color: Color green;
		fontSize: 24;
		putAll: usableAssertionCopy ;
		cr.
			
			
			"Transcript next cr;
	expanded: [ 
		AssertionAndEssentialHypothesisElement new initializeWith: usableAssertionCopy 
	]; cr ; cr ."
	
			usableAssertionCopy ham: proofToDo prevAssertions "asArray first asArray" .
			
				
"	usableAssertionCopy wantedResult: wantedResultElement model.

				c := AssertionAndEssentialHypothesisElement new
									initializeWith: usableAssertionCopy.
		
				c addBoardHandler: self.
				c constraintsDo: [ :con | con linear horizontal alignRight ].
				workPane addChild: c."


		"for each ehypoth
			try to make it with each prevAssertion"
							
							"check if ehypoths can be made from usableEhypoths.
							if not, try to make it with each usableAssertion available."
							
							"usableAssertion hasEhypoths ifFalse: [ 
									usableAssertion cloneVarsFrom: proofToDo. 
									usableAssertion setAsComplete .
									]."
	] ifFalse: [
	
		Transcript next
		tab;
		color: Color red;
		fontSize: 22;
		putAll: ' failed ' ;
		cr.
	
	]
].

^ axmp varObs