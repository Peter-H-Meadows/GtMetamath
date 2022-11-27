copying
postCopy 

announcer := Announcer new.

body ifNil: [self reparse].

"varObs valuesDo: [ :ea | ea resetCopy ]."

MmAbstractVariableModel clearCopyDic.

"varObs := varObs veryDeepCopy."

"dic copy      only copies associations "

"self halt."

body := body copy .



"self halt."

essentialHypoths := essentialHypoths collect: [:ea | ea copy] .

isComplete := false .