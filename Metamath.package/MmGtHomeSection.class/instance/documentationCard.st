accessing
documentationCard
	^ self
		newHeaderCardWithTitle: 'Metamath'
		description: 'Read the Metamath book'
		size: 300 @ 150
		content: (BrLabel new
				text: 'Metamath Book';
				aptitude: BrGlamorousLabelAptitude new bold;
				padding: (BlInsets all: 20)) asScalableElement
		action: [ :card | 
			| startPage |
			startPage := MmBook pageNamed: 'Metamath'.
			BlSpace new
				title: startPage title;
				inPager: [ startPage asLepiterPagePhlowTool asElementDo: [ :e | e ] ] asStencil;
				showFrom: card ]