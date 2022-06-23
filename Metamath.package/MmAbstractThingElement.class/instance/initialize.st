accessing
initialize
"| mmodel look |"
super initialize .

selected := false .

selectedMarkerElement := BlElement new
		constraintsDo: [ :c |
			c horizontal exact: 4.
			c vertical matchParent ];
		background: BlTransparentBackground new.

self geometry: BlRectangle new .

"self background: Color veryVeryDarkGray ."

self padding: (BlInsets all: 4).

"self margin: (BlInsets top: 10 bottom: 10)"




	"mmodel := BrWithContextMenuModel new
		stencil: [ BlElement new
				look:
					(BrGlamorousContextMenuLook new
						content:
							(BrGlamorousSimpleContextMenuContent new
								items:
{
(model name  -> [ :e | MmGame new openGame: model name. ]).
									
('green' -> [ :e | e background: Color green ]).

('inspect self' -> [ :e | self inspect ])
};

								yourself);
						yourself);
				yourself ];
		yourself.
		
	look := BrWithContextMenuLook new."

	"self viewModel: mmodel.
	self look: look"