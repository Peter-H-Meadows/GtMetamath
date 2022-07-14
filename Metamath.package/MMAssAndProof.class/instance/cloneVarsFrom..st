initialization
cloneVarsFrom: anAss

varObs valuesDo: [ :ea | 

	anAss varObs at: ea name ifPresent: [ :x | ea becomeForward: x] .

	"ea becomeForward: (anAss varAt: ea name)" ]
