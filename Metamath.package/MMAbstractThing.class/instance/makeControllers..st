deprecated
makeControllers: other

| controllers |

self error .


controllers := OrderedCollection new .

body with: other body do: [ :eame :eastuff | 

	controllers add: (eame controllorFor: eastuff) .   "(MmMapToController new myModel: eame ; targetModel: eastuff )."

] .


^ controllers .
