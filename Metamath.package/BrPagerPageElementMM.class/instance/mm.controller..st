layout
mm: x controller: c
| el aEventListener |
aEventListener := MmListUsableEventListener new gameController: c  .
			el := x elementForStartingList addEventHandler: aEventListener .
self addChild: el .
el forceLayout .
aWidthSpec := BlMeasurementSpec exact: self children first width .
aHeightSpec := BlMeasurementSpec exact: self children first height .