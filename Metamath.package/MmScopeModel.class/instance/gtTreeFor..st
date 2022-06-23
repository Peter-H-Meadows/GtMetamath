accessing
gtTreeFor: aView
	<gtView>
	^ aView columnedTree
		title: 'Tree';
		priority: 51;
		items: [ assertionsDict values asArray
			"self isDictionary
				ifTrue: [ self associations ]
				ifFalse: [ self asOrderedCollection ]" ];
		children: [ :eachItem | 
		(eachItem isKindOf: MmScopeModel)
						ifTrue: [ "(eachItem value isCollection and: [
								eachItem value isString not ])
							ifTrue: [ eachItem value asOrderedCollection ]
							ifFalse: [ #() ]" eachItem stuff asOrderedCollection  ]
						ifFalse: [ #() ]
						
			"eachItem isDictionary
				ifTrue: [ eachItem associations ]
				ifFalse: [ 
					(eachItem isKindOf: Association)
						ifTrue: [ (eachItem value isCollection and: [
								eachItem value isString not ])
							ifTrue: [ eachItem value asOrderedCollection ]
							ifFalse: [ #() ] ]
						ifFalse: [ #() ] ]" ];
		actionUpdateButtonTooltip: 'Update tree';
		
		column: 'Item' 
			text: [ :eachItem | 
				| aKey |
				"aKey := (eachItem isKindOf: Association)
					ifTrue: [ eachItem value gtDisplayText ]
					ifFalse: [ eachItem gtDisplayText ]"
					eachItem gtDisplayText ]
			weight: 3.