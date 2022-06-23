accessing
gtNestingFor: aView
	<gtView>
	^ aView pannable 
		title: 'GtNestedTreeMap';
		priority: 1112;
		stencil: [
			| treemap |
			treemap := GtNestedTreeMap new
				roots: {self};
				deep: [ :folder | folder body];
				leaves: [ :folder | { $a } ];
				leavesSize: [ :file | 20 ];
				
				containerEllipse: [ :ellipse :namespace | 
					| label scaledLabel |
					label := BlTextElement new 
						text: (namespace name asRopedText
							foreground: (Color white alpha: 0.7)).
					scaledLabel := label asScalableElement 
						zIndex: 10; 
						constraintsDo: [:c | 
							c horizontal matchParent. 
							c vertical matchParent. 
							c ignoreByLayout.
							c ignored horizontal weight: 0.2.
							c ignored horizontal alignCenter].
					ellipse addChild: scaledLabel.
					"ellipse addChild: bb ."
					ellipse background: (Color gray alpha: 0.2) ].
			treemap asElement
		]