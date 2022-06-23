layout
onMeasure: anExtentMeasurementSpec
	"| aWidthSpec aHeightSpec |
	
	aWidthSpec := anExtentMeasurementSpec widthSpec.
	aHeightSpec := anExtentMeasurementSpec heightSpec.
	
	self constraints horizontal resizer isMatchParent
		ifTrue: [ aWidthSpec := BlMeasurementSpec exact: (66 * 4 atRandom) ].
		
aHeightSpec := BlMeasurementSpec exact: (66 * 4 atRandom)."

	super onMeasure: aWidthSpec @ aHeightSpec.