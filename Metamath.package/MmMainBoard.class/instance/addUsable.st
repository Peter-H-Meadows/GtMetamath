adding
addUsable
	| c |
	proofToDo assertionsUsed
		reverseDo: [ :each | 
			| usableAssertion |
			usableAssertion := (proofToDo prevAssertions at: each name) copy .

			usableAssertion body isWFF
				ifTrue: [  ]
				ifFalse: [  
					"self addToList: usable ." 
					"workingOnList" "mainWorkspace addChild: 
					(thing copyAndClean  assertionAndEssentialHypothesisElement: controller) ."
					
					c := (AssertionAndEssentialHypothesisElement new initializeWith: usableAssertion) addHandlersController: controller. "controller: c"
					
					
					workPane addChild: c.
					
					"self addToWorkPane:  thing ."	"copy"	"thing setAllVariablesToFree.
						
					usableTurnstiles add: thing ." 
				] 
		]