accessing
tryMakeEhypothsWith: a
| sc |
	sc := self vcopy .
^ a select: [ :ea | essentialHypoths first canMapTo: ea ]