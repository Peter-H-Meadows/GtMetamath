converting
createWorkingOnList

"workingOnList := BrSimpleList new.
workingOnList stencil: [ :each :index | each assertionAndEssentialHypothesisElement: controller .].
workingOnList hFitContent ."

| mmodel look |
workingOnList := BlElement new constraintsDo: [ :c | 
	c horizontal "matchParent" fitContent  .
	c vertical "matchParent"  fitContent
]; clipChildren: false ;
background: BlTransparentBackground new;
layout: BlLinearLayout vertical .

aPannableElement := BlPannableElement new clipChildren: false .
aPannableElement constraintsDo: [ :c | 
	c horizontal "matchParent" fitContent  .
	c vertical "matchParent"  fitContent
].
	aPannableElement contentElement: workingOnList.

"aPannableElement constraintsDo: [ :c|
			c frame horizontal alignRight . ] ."
		
		

	mmodel := BrWithContextMenuModel new
		stencil: [ BlElement new
				look:
					(BrGlamorousContextMenuLook new
						content:
							(BrGlamorousSimpleContextMenuContent new
								items:
{
('zoom in'  -> [ :e | aPannableElement zoomIn ]).
									
('zoom out' -> [ :e | aPannableElement zoomOut ]).

('inspect self' -> [ :e | self inspect	"e background: Color green" ])
};

								yourself);
						yourself);
				yourself ];
		yourself.


	look := BrWithContextMenuLook new.

	aPannableElement viewModel: mmodel.
	aPannableElement look: look .

^ aPannableElement
