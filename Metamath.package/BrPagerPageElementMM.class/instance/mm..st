layout
mm: x

self addChild: x elementForStartingList .
self children first forceLayout .
aWidthSpec := BlMeasurementSpec exact: self children first width .
aHeightSpec := BlMeasurementSpec exact: self children first height .