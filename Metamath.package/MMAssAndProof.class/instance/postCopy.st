copying
postCopy 

announcer := Announcer new.

body ifNil: [self reparse].

varObs := varObs veryDeepCopy.

body := body copy .

essentialHypoths := essentialHypoths copy .

isComplete := false .