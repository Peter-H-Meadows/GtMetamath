initialization
cloneVarsFrom: anAss

varObs valuesDo: [ :ea | ea becomeForward: (anAss varAt: ea name) ]
